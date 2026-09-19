## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:ef9e01cf709344d2f886a434cc7c2e76dc11457f6f15f34044bb352ba45e04d1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2feb452510c638e2666365524779e7ffc2ef1146769c861c4ccde7859e7bc981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.9 MB (256943086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab43051ddc5b0962575220c93f17faf75348e23e86970acf48cce2a97160b15`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 00:46:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 00:46:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:46:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:16:26 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:16:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:16:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:16:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:16:43 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:16:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047074c2221bdd2b0c73447c92c2aeee0c685cedbfa550e198ad210e89801d1c`  
		Last Modified: Sat, 19 Sep 2026 00:47:41 GMT  
		Size: 158.1 MB (158120307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c41c7f23d9929f3388c99191e270f32cfc88e17967eff11cbeddc6e0cc680a`  
		Last Modified: Sat, 19 Sep 2026 01:16:59 GMT  
		Size: 69.0 MB (68991320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf8b3595f234d72eda494812cfb338bfc80ff7d78cdc48d96947b6d1b2231b6`  
		Last Modified: Sat, 19 Sep 2026 01:16:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2eb5def2e9bfa61cc013bab9eb4693014e911fdcd7aef52ed70dc1186d1ef6e`  
		Last Modified: Sat, 19 Sep 2026 01:16:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b3a8bc1d47e969057f3fb8ccf8121dbf066fb6111f086173a141070b01757101
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5280169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7488f19aff8348d07fb56448f1bc68b85300fc74b4efb8cfc59c83f7549931b3`

```dockerfile
```

-	Layers:
	-	`sha256:2799886529a0984252ad90f6be67f34d21ec8a8a5ef3e7f6a8ebbc109a5aa252`  
		Last Modified: Sat, 19 Sep 2026 01:16:57 GMT  
		Size: 5.3 MB (5265158 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1779faa0af3e7db6543acbf4961a80acec6cff990e86c393b9446cd91ec69afa`  
		Last Modified: Sat, 19 Sep 2026 01:16:57 GMT  
		Size: 15.0 KB (15011 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:276af1213a85406657be479df67959ae8cc4b36266980f7066a284ff324cbf52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255401232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d7d597708c689f405dbf45f004b2971e3d334f482cdb38481d3c34c438fb72`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:23:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:23:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:23:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:23:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:23:46 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:24:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:24:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:03 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7f1bcfe8d38242708481f9628393d2bdb7dea2bced29f399cdf4c79ff1ceefe`  
		Last Modified: Sat, 19 Sep 2026 01:24:27 GMT  
		Size: 156.4 MB (156401919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82033b686839ec7057edb948e09655788b411359bbb242b9d7400e3ea7868057`  
		Last Modified: Sat, 19 Sep 2026 01:24:26 GMT  
		Size: 68.8 MB (68808581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:290470dc94eac1a4496e05b86e4fc429e6f3de0b20bc0c5dee35345fbef2cff7`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea47b08b4b0c35a5ea2597ae37bfba50396a6d2942a1ffbc71245fd3c73f3a0a`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:843a763952a595f675bb0441bbce6a5e29512c3022c1c0752b4a46757ffdbe41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c5adce8bffc3bd6f0e8c5b7a64a4ef41a58007c789bcb815506ed6e948c092`

```dockerfile
```

-	Layers:
	-	`sha256:6f2fed2470cdde91a9d32e2eaaadefe6c05b5c5c8bb7dabe20176e5990c3a9e9`  
		Last Modified: Sat, 19 Sep 2026 01:24:23 GMT  
		Size: 5.3 MB (5270919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e6c5adaf41f184d5736c567287fe43c32beb54aeed5d25ed5fd1db509337e38`  
		Last Modified: Sat, 19 Sep 2026 01:24:22 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:dec16e9f73563f87665ca06ad6b646dfc51655f14699220d622caa46963b3c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.5 MB (269466892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc06e55a4baf70cd775cb3afe891998a56ca98c5109fde89e79cb660bc0bbb88`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:25:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:25:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:25:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:25:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:25:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e00a40e150b754085b447c73428d6b28deadec22215738965200b831c00e02`  
		Last Modified: Fri, 04 Sep 2026 00:26:20 GMT  
		Size: 77.6 MB (77575500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34909199bbf26a1217157fccc8df1debe5c5c72b20eece928d1ae04d99223e84`  
		Last Modified: Fri, 04 Sep 2026 00:26:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f972c76f25410738ac3c2365e26ee64750b8047d96acfd2fb366be1d39aa62f`  
		Last Modified: Fri, 04 Sep 2026 00:26:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b739f0696f9ca94d82b94208c9eb97a52c4df4b1e465a083a0e5556815df39f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5279796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7035ef31e7d3a4ea73895dabddbf6382c11e9d9b0412a056ebeea55ccc37646`

```dockerfile
```

-	Layers:
	-	`sha256:a15ea54f0d8eb5be441aa58a27f7f47a5b4e8bc86ef20aa2d1d3e13426f6b304`  
		Last Modified: Wed, 16 Sep 2026 10:55:32 GMT  
		Size: 5.3 MB (5263783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4707a77fd8d5118d3c5c1785e8deb37f8229785bee1018bc45bb8a5374e4d136`  
		Last Modified: Wed, 16 Sep 2026 10:55:32 GMT  
		Size: 16.0 KB (16013 bytes)  
		MIME: application/vnd.in-toto+json
