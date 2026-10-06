## `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:e3903cecba841c0a67db2b6b1d9cf80aa08fb25a885dffb23eabf81eacecdcb6
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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d9055928b7c9f73be0fd95200a0c3d40b35b40ce2cb6c05b6cabeeb4b7781d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199310044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54c94f9330df0d7fa7d38dba930abb68909d060ab8e33fc5848aa5e0c8fb5c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:28:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:28:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:28:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:28:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:28:25 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:38:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:38:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:38:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:38:11 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:38:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a163626061f9d090892b27101085fc696e2d8227d87d635c9ee060ad079e5ae8`  
		Last Modified: Sat, 26 Sep 2026 05:31:33 GMT  
		Size: 91.3 MB (91256230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a77c4599919aa6751c96b7d813d59305f33d298370cf021af983c58bc7c17e0`  
		Last Modified: Sat, 26 Sep 2026 05:38:48 GMT  
		Size: 74.4 MB (74411539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e80b0bbc6b7d0d5d2c804b6cb461319e58e0ea12b142a28046bf8909e1c81c86`  
		Last Modified: Sat, 26 Sep 2026 05:38:46 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a771a61928aa39e3fc465b449398c1f4e44049efcee2156e33075f7937a049`  
		Last Modified: Sat, 26 Sep 2026 05:38:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ee0357625d4456721de4a0a5a977f9019f64bf27fd4cc7fe53fbd3ca8623de80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a87e27e7a9cc7c836e2e07b1a2bb52b557c695438572fa404827922f2f8476b`

```dockerfile
```

-	Layers:
	-	`sha256:c57e0515118ba24730c23dc786bd5dbfca1bed97d6c9395ef015f95fa9657495`  
		Last Modified: Fri, 02 Oct 2026 08:29:07 GMT  
		Size: 5.2 MB (5219093 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c21e80246645339db5175ebd374d99d57d87f32e61e7f0a044dd3f57eba1befc`  
		Last Modified: Fri, 02 Oct 2026 08:29:07 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
