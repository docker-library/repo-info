## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:85086d1a66040fbde6ef8b493e62d20b3912a0f4eb83a16de4e7898e9f2642a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:62afdc6bb5c88a6a3ac901634e2d351f0901c6b1ff511b580b9aa96f8a61dd4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244933228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1472fa344bf2a62d927c28ebf05203b9f81b47309d488adc3670fe19ab6cb543`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:39:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:39:43 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:39:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:39:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:39:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:39:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:39:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c52fb1ce1306b02bca48a5e2ba52706085bc9eae84c9f4adc3cb43103878e64`  
		Last Modified: Tue, 10 Nov 2026 00:40:19 GMT  
		Size: 146.1 MB (146086148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4ceed1881c0c6cf24bd1ad47d66c4c6d259c05974a34e2872d477e26881fa31`  
		Last Modified: Tue, 10 Nov 2026 00:40:18 GMT  
		Size: 69.0 MB (68989402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d660c86a14bda667bf747e4ded831421fc27db92c4943395d3c52bf93ff9fa42`  
		Last Modified: Tue, 10 Nov 2026 00:40:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dac24cd8dc63f4dc2e4c448fa88ec2368e5d285789944768111470b42150e3f`  
		Last Modified: Tue, 10 Nov 2026 00:40:15 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ecac8ff6fcf0fd54e2c8b6295ef89f64d6c84b8a3040071351cb826e2ec9f194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804255df4f621eb363a024a8377d278d86f21db08df65e9d4d2266d9bc5ed552`

```dockerfile
```

-	Layers:
	-	`sha256:902e326af24ce1a589f568bba86f65632fc088c67da875423d1c52053bfbcde7`  
		Last Modified: Tue, 10 Nov 2026 00:40:15 GMT  
		Size: 5.3 MB (5262057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8cc21413ad64d50c4e461ccecb42ccff316723542d1faccefc25b0eefa4f671c`  
		Last Modified: Tue, 10 Nov 2026 00:40:15 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8896c6c8206c58c5bc0b013fdbe92e743efc32caaef6f21d92fae19d0482c726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243977905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057b82442c3f87e250d530382371fd775338507d80069015b8202bf920cda937`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:39:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:39:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:39:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:39:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:39:02 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:39:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:39:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:39:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:39:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:39:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e27a5685461d6127737cd2b031fe114d85335ada68fdf4dcf9f0d6a50839ac`  
		Last Modified: Tue, 10 Nov 2026 00:39:41 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5345e31c60bc92c1178b772e50d78d71b848c648034199047327aa095323af44`  
		Last Modified: Tue, 10 Nov 2026 00:39:40 GMT  
		Size: 68.8 MB (68805161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e430561a8c64f584cba596044aaa025ad5124f49e8541d63722729fa6104fd`  
		Last Modified: Tue, 10 Nov 2026 00:39:37 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16cdf4779efcf9e9928e4b8d65c656a3b61490b2f82e23fe1368f106b801d800`  
		Last Modified: Tue, 10 Nov 2026 00:39:37 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:028433035948c01bdcdaf8ea637288ac4d562480658fc5fa431155f38c135598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56b0c442b75c357aea129f9b554a1abe286f7bcf3ce3bc9294f276bb7f9f2df2`

```dockerfile
```

-	Layers:
	-	`sha256:6918d9d94449d0d8154f10be332ffbbbd043aa5fc22b7e6474b5e324f5013e6e`  
		Last Modified: Tue, 10 Nov 2026 00:39:37 GMT  
		Size: 5.3 MB (5267818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6016cb7f27822c950a2fb907d39dcb2d5eb42e5279f034a6274b71dfd44d65f7`  
		Last Modified: Tue, 10 Nov 2026 00:39:37 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

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
