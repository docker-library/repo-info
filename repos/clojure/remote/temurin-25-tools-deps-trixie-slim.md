## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:79dd5e5f2a433eb97eaa8b4b51b8cb8e0c8cbf559113d25df99720b7fcd9e7b0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:4f8951d7ecce5237b8d3f4eef209629eedfd1a1847bead83a69b3133f9b9b445
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191446343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7db4b889595bf2ef571949d82896f17a836de9e2d1154b25405defce7d5ed68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:00 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:00 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7f979a12711dd9ea3ab58dc0bf5126a35c95c52cc5c6275bc8d7342c5911be`  
		Last Modified: Thu, 19 Nov 2026 22:09:33 GMT  
		Size: 92.6 MB (92598922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ecd7e3419f4b4776b41a6b1cf6aad1440f496fa97c76db4f6f9b81bcd843edf`  
		Last Modified: Thu, 19 Nov 2026 22:09:33 GMT  
		Size: 69.0 MB (68989741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1fd75b37e4cc35a66ba3aba6e52cb09faaad49c21820cf05788a33a061eb580`  
		Last Modified: Thu, 19 Nov 2026 22:09:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c00e32a417820397530d4fd97d957cb71eb77753eb502765329aedede41566e`  
		Last Modified: Thu, 19 Nov 2026 22:09:30 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3963ed48280eabb537fa0c53d5eb75fb9fce19d129cf5f828c02eb71cdb093a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0787e1f3d5d435c1a3fbab180766fe9841a559734ea190569396f9de29439756`

```dockerfile
```

-	Layers:
	-	`sha256:e884e6bd3bb07eb135db5c85aed1554d0e303b70d7e7e75d4fe1c49c4d528e9e`  
		Last Modified: Thu, 19 Nov 2026 22:09:30 GMT  
		Size: 5.2 MB (5230143 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a880cb8210ff76c0883408cd48b604c424be198dfda43d9bb2f74d13d38402d`  
		Last Modified: Thu, 19 Nov 2026 22:09:30 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8859eea4c4a59de01ceaac924183abedfdc24200e85b737bbfdf41c54e8ceecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190547201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:636fd200fbf33f7f146eddac210a75e01647f162cff830760953194ba421bb5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:04 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:21 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc50268cf98b4931c42ef66e5296d58b29909a833ef2a30ee5f9f81056b21877`  
		Last Modified: Thu, 19 Nov 2026 22:09:42 GMT  
		Size: 91.5 MB (91525626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3d06dcfe1e1c31078af92f31541c10abeaee1c9d37168a6a22e679a1e9ad52`  
		Last Modified: Thu, 19 Nov 2026 22:09:42 GMT  
		Size: 68.8 MB (68805991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ee51d8bd9bba80ecba1c1c0b75d71b2a36c173cfee4ecb5bc913432ac48a7e`  
		Last Modified: Thu, 19 Nov 2026 22:09:39 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8d335f8ab25ec761f6a354e79fe88f13c87fb30f869e5fef388a80ce15dddf`  
		Last Modified: Thu, 19 Nov 2026 22:09:39 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:834e5975c6fd3b37e77bea50ba4fdfa63bbba371d2a20691e067e2b4b98b8bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c406f2597f89538a5c2adac8ffbf1af27475ec870e11186c87e96eb3cfbbf7`

```dockerfile
```

-	Layers:
	-	`sha256:ebdd0fc64019ff6139ee51957fc5d1e0876b0a2c70c2c5d0402b87ae523cb962`  
		Last Modified: Thu, 19 Nov 2026 22:09:39 GMT  
		Size: 5.2 MB (5235925 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14ea7c4dd500dfc9c32efb4c5b3c08e3152323c1238901b81893821cdc050394`  
		Last Modified: Thu, 19 Nov 2026 22:09:39 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9d740534f436391cbe06682e88f13ea901caf61703fca8de349fc5ab7121972f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198199449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de392251277c060048f674469f8d1257213e6e1c58e0413891e3a44d4b5438d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:07:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:07:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:07:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:07:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:07:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:12:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:12:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:52:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:52:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:52:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16eb107ad4aab0d839191f5d20438fae2bc20bed304c2176a95bc563270b24d6`  
		Last Modified: Thu, 05 Nov 2026 16:11:42 GMT  
		Size: 90.1 MB (90111671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb158acc1e208c0f0786d0979896b56cecc32bfd8b82a94956738516ab2ef66`  
		Last Modified: Thu, 05 Nov 2026 16:13:28 GMT  
		Size: 74.4 MB (74418589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7bf72c0c8da33ccca2ddfac99640aa14ce7147db9a3abbcd1dbc0fb0ad78b7`  
		Last Modified: Thu, 05 Nov 2026 16:13:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b678ac28ee18f3d011727c95d0574e76d31945d3ec584cdc4233f53f7cbd3266`  
		Last Modified: Tue, 10 Nov 2026 02:52:29 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:069a3dd1756780fe1891c13b452100ee98e91b24e8b31bd52b7d32e288e06cd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d89ba6b2bfb11f971aa443856744f17a5826148cba4e272c3111033e37c7af0a`

```dockerfile
```

-	Layers:
	-	`sha256:9bedd830218c4661c4b9e19eb9221b2f68b29e973dcdb0b10750a1d3bfde0197`  
		Last Modified: Thu, 12 Nov 2026 08:43:56 GMT  
		Size: 5.2 MB (5215975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f76e2809cf798b3411a42ceae5d06df567d0189bc1515ee733ff65dea32a8e`  
		Last Modified: Thu, 12 Nov 2026 08:43:56 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
