## `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:747c22814cb95031892f5ecaf7dc45e980055d1112fb176cb4db1decc62c7350
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ada9ed58816e4ada267edfaa9e5b6fbb3339856fc2d6988df4e8352d787f47d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220174261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f7ccad945f66d768fb634be096a24b9a6d593fdbd3b32cf1af3954bd94a322a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:44:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:44:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:44:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:44:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:44:01 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:44:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:44:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:15 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f756c8dda816442c8dbde5147ed0d9b48cc66d6ddf46f6e1849b1c086e4c8c41`  
		Last Modified: Tue, 10 Nov 2026 00:44:38 GMT  
		Size: 93.6 MB (93647859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501789b95d647097543b6f92c24f6dc01ff30c35d059bafa1bbbaf9d3a3d96d3`  
		Last Modified: Tue, 10 Nov 2026 00:44:37 GMT  
		Size: 78.0 MB (77998374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c713f55ebf62841221ac155599520d43212c17839167fe38a405be60aa0739`  
		Last Modified: Tue, 10 Nov 2026 00:44:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939e462d921a4b1bdeebac8ba4012fa69a723e7cadc58c7e1a81d7bafacc7067`  
		Last Modified: Tue, 10 Nov 2026 00:44:34 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ee9b513e7125c2bd2fd9a93e69744863848d2d76b1b98658e34fdc59660445e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a5a3a0ed62be37c927843159e0a824169c94ff2c92b406fae2cfeb3e06ab533`

```dockerfile
```

-	Layers:
	-	`sha256:db38a064728a9a3121dbc75e8a07842c41bf90dbbb9145ccf0c70f7e0897623e`  
		Last Modified: Tue, 10 Nov 2026 00:44:35 GMT  
		Size: 7.3 MB (7342979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dc6f4d65b1cb9f3d5259c0b1d34f84ba47f5ad6003dbe2bf67712fbd0c0407d`  
		Last Modified: Tue, 10 Nov 2026 00:44:34 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0ecf9886995098decc0249377661e443dbbb1275c87566bc8838c456218cd5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219074057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac3323bae0f34e662e36b1eed1522b0a5bb0a5d0c0671fbaada4662b189be97`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:43:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:43:26 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:43:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:43:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d98b312c3c380a70d9957f77086803f2c0464ff01bc56ab79a3ba11c7b582e9`  
		Last Modified: Tue, 10 Nov 2026 00:44:03 GMT  
		Size: 92.7 MB (92660465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4334826d51ffc087fcc971a8dc3b9f5ec2f5b4db1925c95da6dd242ff7afc03f`  
		Last Modified: Tue, 10 Nov 2026 00:44:03 GMT  
		Size: 78.0 MB (77999591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf5bed7b46020022c0ff19d9d21fc78e34c6daf31c23e324cbb65e29a0af7a0`  
		Last Modified: Tue, 10 Nov 2026 00:43:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec16c3343f7f47418804db6f980e3af24aacafbe0d8a1b5cfcb2b04b0331643`  
		Last Modified: Tue, 10 Nov 2026 00:43:59 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ff42cfa2956ac6d16f0f905dc19b75afb5091aae915e30c96510643ae2019b0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecc87351760085ed394e94472cefa6fb967fbc1ce7c81968e79ca94e4b2d66d0`

```dockerfile
```

-	Layers:
	-	`sha256:7442c0aa4c1790f39580783be4d39ccd80ba7da8033781d4ee94e1b0ab9459b1`  
		Last Modified: Tue, 10 Nov 2026 00:43:59 GMT  
		Size: 7.3 MB (7348763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5820227d32e545e16d5813278eb933b480475af57589cc4012862854c7f4a4`  
		Last Modified: Tue, 10 Nov 2026 00:43:59 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6b922719e2dc687993e4a2bb6931bf48c725946e48567bebe6b062a7b588b7ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228119836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40bc20eef76ef3efe4dd73b555c57612df23ac5b6f3c25c0ab9bd2b6b19e433`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:52:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:07:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:07:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:07:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:07:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:07:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e75d38b2fe5bbc4bc23e1222e27c678405808c109729123654e27aa51a377`  
		Last Modified: Tue, 10 Nov 2026 02:57:13 GMT  
		Size: 91.9 MB (91925710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e1ea8f43b74033600649293e5622e0a2226985c1f4aad07966680d540169e6`  
		Last Modified: Tue, 10 Nov 2026 03:08:10 GMT  
		Size: 83.8 MB (83823961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613033bd4dfc4999a11bf7236233c1354996286c1d6b00fed3d247ee00b279d3`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77684d1a569d0a7e452028553813904e72ff7d0f61cead6aecf1a47aa665fec4`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b053d9dc6bfb5efd4c8b99251aabc8fba17c0183ef89676117874c5a88ccbddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7346947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447030ce9b3f2ecaea6d1a1789809d73e09ad78e430423e4b9fcc95e076854b2`

```dockerfile
```

-	Layers:
	-	`sha256:c0066581acabe668f80f4b4d78bd64370df2d59671e93447a4314544a14d8e36`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 7.3 MB (7330278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45577aa766cfffde9170d39bcadab7746db812c90e39f00159211e84bbf10d23`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
