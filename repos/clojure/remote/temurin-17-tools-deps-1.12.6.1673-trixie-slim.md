## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:1e1571363e641250bf50543ae1308ca4bdfe73b6a4a438eacd3fd2685e0e12a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f52ffbce884a4db2ced2dc5e0f5d93eb9f550e223ab1975edc223e1d9c734596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252948285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:431bb173d228a9c7ffad1e113ea102724b8ef4e25936f2c9db079602182fed68`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:41:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:41:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:41:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:41:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:41:36 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:48:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:48:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:35:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:35:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:35:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199bd1f0ba598dc223d976f04d012aa541bc41ffc8647af3bd3d9ec8c396327c`  
		Last Modified: Thu, 05 Nov 2026 15:47:01 GMT  
		Size: 144.9 MB (144860487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e30e820c98ed232cac7c86c69397cbd090f35a234bd725028357bf8ed834798`  
		Last Modified: Thu, 05 Nov 2026 15:48:55 GMT  
		Size: 74.4 MB (74418606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e57381d59514d68a77cdfc7315cfa2e7d84e45655ac612b02c370ee4ab6bee`  
		Last Modified: Thu, 05 Nov 2026 15:48:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3fea28f345510adf48b80c98f358af901c6fd25cf4d6a837acf3fc6b92f685`  
		Last Modified: Tue, 10 Nov 2026 02:35:37 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e8dcac427d481d7635179c4b836dcc7d68f83ae1df2440b22d30f9e2024f5d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5280240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e17d117460b460c22931f94ce462b7836e6824710a18808701677ab16f614f8`

```dockerfile
```

-	Layers:
	-	`sha256:5b5b2897fe1676584124141ccf0adc10f38c8a91749b412221128b06d7eff6f8`  
		Last Modified: Tue, 10 Nov 2026 02:35:37 GMT  
		Size: 5.3 MB (5265182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abdc6957726d7a4da26d16fa9256cd73a8d8ceacd2da29e5f2d9670774b608a7`  
		Last Modified: Tue, 10 Nov 2026 02:35:36 GMT  
		Size: 15.1 KB (15058 bytes)  
		MIME: application/vnd.in-toto+json
