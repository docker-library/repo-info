## `clojure:temurin-25-trixie-slim`

```console
$ docker pull clojure@sha256:c6a9846ced53fe7c23d4d4226e19e93f55e1b6e4dd5a064751d0374f92a1cb6f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-trixie-slim` - linux; amd64

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

### `clojure:temurin-25-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-25-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:efb882c01d6f6085beb12ecac79020d22ca7b1b74867e2ebf9c28a74a50abe60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198192702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab988a4d79978488b8f714714689bcc0d357aea6850ef756891a4673aa549f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 01:54:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:54:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:54:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:54:48 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:54:50 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:55:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:55:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:55:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 01:55:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 01:55:50 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28bf80c270b42fe878d949910e3de0e79131413fbaa5e0565f08d4e109121a2`  
		Last Modified: Fri, 20 Nov 2026 01:56:31 GMT  
		Size: 90.1 MB (90111744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f5a45b393c8ebfddb9543cb3c3e2cf5c50a5777c10204747b2b0708e20712c`  
		Last Modified: Fri, 20 Nov 2026 01:56:31 GMT  
		Size: 74.4 MB (74411761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e95c49f16021fad44da42b586ed9d1d267024c88152940df68976bbd3fe507`  
		Last Modified: Fri, 20 Nov 2026 01:56:27 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc19c3f702de856da6e98283927f7f9b57c07a247afc8a8ed04e440858956fd`  
		Last Modified: Fri, 20 Nov 2026 01:56:27 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3091479ca12d91783573644677ad8cd8d2f009fe1c5ff7dcf6e8cedfe55dda5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913959bf3ec46cfbb7ad77c40b1070fd0377ca4c75f133eea3767ac891f0834`

```dockerfile
```

-	Layers:
	-	`sha256:d81a2788b34a44042f9f0da89cd140d037f5f6e535f1a2c510ee68aa1a67b3eb`  
		Last Modified: Fri, 20 Nov 2026 01:56:28 GMT  
		Size: 5.2 MB (5215977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71849586fd2e8e2631b83a124f1e6ccff13dff67903b4bf8499afcc895fa20f9`  
		Last Modified: Fri, 20 Nov 2026 01:56:27 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
