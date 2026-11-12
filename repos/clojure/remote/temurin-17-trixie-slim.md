## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:c7f80b158695fc6c17729bf02b7bdb1629633b9204d6d3ab4ff78e21fa5cf5aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:57b62f524620184048b8ff4190029459b74c7108ff375efa3b8c0da4c59ddec0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244933378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f6ffa39eaa64ba54db54f627c939ed81e84dc64d65a665118882a309f0b054`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:48:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:48:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:48:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:48:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:48:54 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:49:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:49:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:49:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:49:10 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:49:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b2ff0d300a5236f246600c2ee982540352c326dfdb1a188a55847a4195f213`  
		Last Modified: Thu, 12 Nov 2026 00:49:34 GMT  
		Size: 146.1 MB (146086199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6b0f898ab7395cf1216948983ede2ac9cd3154c5fcff5ca79e6286a3e5b352`  
		Last Modified: Thu, 12 Nov 2026 00:49:33 GMT  
		Size: 69.0 MB (68989501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f44e73fa1f1db3e12ff967a3e317056f1ac5de65444a11745e1f3cb97caa8d6`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3753ae0bdd1565fe6f67ed3990b2ecdd9c211c0d6e18a037a92287e8cc886e19`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:92a27eaa664538fc02d1a8a05dd65416afd53e800cdce8a4a612f7c0954f1b6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10eb95eead6e5350bb1cc226997a4ea9eb289b6049170e7dc63d17dabd89767`

```dockerfile
```

-	Layers:
	-	`sha256:c51bdfda71c4037913bf8c711ceb9b726bf0a993f193bf129b0e3dbd108b0e17`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 5.3 MB (5262057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13745c0866a9242a763529a1ed6a5d1836bb303a08782151bcaf706737adf36d`  
		Last Modified: Thu, 12 Nov 2026 00:49:29 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:149ce130ac13ac181890b61d985d6b89882340993fc0b3611740df277f1dc607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243977812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b23fc2234ee2a3fe25f365bf01131ea6abbf7096834bf2776801fa720a6957`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:04:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:04:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:04:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:04:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:04:19 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:04:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:04:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:04:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:04:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:04:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed5d9e1ab1dadbe7d4d4232df1f75ba78154c0bb83da502c0c595eeca382e11`  
		Last Modified: Thu, 12 Nov 2026 01:05:00 GMT  
		Size: 145.0 MB (144957159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbaa6fc5a6f8c55d06e7a263a41614ff87407268d62c6882a5365f81959a849`  
		Last Modified: Thu, 12 Nov 2026 01:04:59 GMT  
		Size: 68.8 MB (68805072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce78c92e4c933fe0fbd9b39c28f0589364f21ca3ea40f9b444520b380dd7348`  
		Last Modified: Thu, 12 Nov 2026 01:04:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9332ebb5778a2c395cb1ff61365b9040e5c00eae6a0e0e53fd399330da85aa`  
		Last Modified: Thu, 12 Nov 2026 01:04:56 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d3285d7143bf2a2f115c4af59e3d84f9c73540aa3751efd984ba5a63087d6288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2114c0e297da7606c8e59427981a7917419aafe03298f6f17684a1543c93961f`

```dockerfile
```

-	Layers:
	-	`sha256:d7f51a85929a14e272567eabc3a4db966c6e42599625507b70216cebbc368a8e`  
		Last Modified: Thu, 12 Nov 2026 01:04:56 GMT  
		Size: 5.3 MB (5267818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97745430a65b904dabb77c7543a608a4ce6ac6e449a1fca553515a95bdc315ad`  
		Last Modified: Thu, 12 Nov 2026 01:04:56 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:239096dba5851d15491a703a4b77a7d4bbf822b02856ac5a4c4f17422d51c7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252947340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7ccd7a0b40e080265706f5d5d03767ac3ffd9ad7e7ac97fcc051aa73372148`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 08:13:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:13:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:13:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:13:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 08:13:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:24:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:24:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:24:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:24:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:24:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beea9cbb2d380277e6a8c6fc2fa108cc20798179bbc6cfe404f3bf23b52f54c7`  
		Last Modified: Thu, 12 Nov 2026 08:18:57 GMT  
		Size: 144.9 MB (144859692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d4df9c7fe59f440f904b1e60212ddf3dd5f1504980c1b45ab8238f854454c0`  
		Last Modified: Thu, 12 Nov 2026 08:25:41 GMT  
		Size: 74.4 MB (74418458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97e5e537c7b24ac051389d42bdf601516a241c91dfad95ceecb2d17a4df97b3`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9176bf89b0954dbe576ee4e50f5fe490c77a371a324e0aa8d35e314f0c510046`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f3affd707c556e8ae73cbe9e9a4d048afbb70912fb4ba745e534d7baa76bea30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e95cf51bcc5f5ce4cdc928088512955d2e9c7a9ab8232ac9c77ba6a7ec3e06`

```dockerfile
```

-	Layers:
	-	`sha256:c9928aaa9a2320aacecb252827a571a5bc3f2ff42d8950ffb9de93e99a7a000b`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 5.3 MB (5265182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476586f7d44c7ad558ad1c95367173046d9bcc2409924ec4217aa6bde8d89fce`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
