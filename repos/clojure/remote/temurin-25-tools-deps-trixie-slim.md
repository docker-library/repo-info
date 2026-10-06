## `clojure:temurin-25-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:a3ae1c8f0b1e8601deb19a9082471612b04e1966294e53b633b6e0d80f038f1f
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
$ docker pull clojure@sha256:ea7ea24b10d8563880a01914b9503a089f66d370a01f84082b8fa7cd72defaef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191454141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:208f7f289a0764aa9b631797587ce1ee6972519a4162add45fa6860a3c2c3029`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:56 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:11 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a19727497160d89d39c248e6cf4fe905bb71ceec2b96c59cef3a2ee46b8ba6`  
		Last Modified: Tue, 06 Oct 2026 02:14:32 GMT  
		Size: 92.6 MB (92618079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c9e60732d2e8b631477368f0fb3d49866a11dd6c5f39aa1940e9cc9e506db74`  
		Last Modified: Tue, 06 Oct 2026 02:14:31 GMT  
		Size: 69.0 MB (68991673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b734e66d660978ade01e55885ef9ea6a67a3885042e670e52a67339b289722`  
		Last Modified: Tue, 06 Oct 2026 02:14:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3bb8d31813f3532634c263b2006872d29aa0bea56f514d360a2b7ebf895479`  
		Last Modified: Tue, 06 Oct 2026 02:14:28 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:156fe160b5c61d6345ae4547a3001ca3f15321279c2a42fc3ddddcc97e15cb89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:621e2c25adf7c04dfed9f543903efb40da44c6bf973b2eca31ff99624b7b0bad`

```dockerfile
```

-	Layers:
	-	`sha256:d9cea8e73fa3d1e1cb7c1f1440283142765555c3cfdb15d31e39f5aa5836f73b`  
		Last Modified: Tue, 06 Oct 2026 02:14:29 GMT  
		Size: 5.2 MB (5231398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbd8041e74e91f75505357d8e0c56edb6f693210e84198d38af2830d9ddc6633`  
		Last Modified: Tue, 06 Oct 2026 02:14:28 GMT  
		Size: 16.6 KB (16644 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0f640ce45e30a0898707f73196d28d8a01a3ed43962aa8e8b945987e16981eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190538681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd4594dc25c9ecd2190a7657fe0f370d932717f8bd2a05f9ee14ea5d8eb7382`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:49 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:49 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93051b2f7dad4c3fbc1e62b1585ce869b0a886a7525b09738ef832bde3e058c`  
		Last Modified: Tue, 06 Oct 2026 02:20:26 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446288ae0269f4420f9ff4d881d5fe015a790ac2338aeb5fc892da0d163d4f5b`  
		Last Modified: Tue, 06 Oct 2026 02:20:26 GMT  
		Size: 68.8 MB (68808515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228c3b63dc55fe40a85551a7f670aed7f042ed40c89fcf911b50b2b27bfa7611`  
		Last Modified: Tue, 06 Oct 2026 02:20:23 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e39dc2007f23eceea938ede816d30018767877580e7402c9b1530964b1bb2a6`  
		Last Modified: Tue, 06 Oct 2026 02:20:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:843a45f19ac678f4a1fc3dcef54f77f59990204807f764ef9de801d03420d5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5790bcf11ae0d0c7bec4aff387d9a153cd2369a76aa9922522e51ad9a461575`

```dockerfile
```

-	Layers:
	-	`sha256:bfd9871e0f71b2ff30afd851a034346f7ad7dbaca60a9fd532609fd429209d88`  
		Last Modified: Tue, 06 Oct 2026 02:20:23 GMT  
		Size: 5.2 MB (5237180 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:004f1780dfcc921d0e95f19aceacbee1a41b24bffb744cb91e70568698af17e8`  
		Last Modified: Tue, 06 Oct 2026 02:20:23 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-25-tools-deps-trixie-slim` - unknown; unknown

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
