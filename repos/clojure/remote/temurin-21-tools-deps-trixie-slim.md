## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:3a365ed48694c4dc5b633c76c0c397c92e749dd987b46d89e236a37457d2d07d
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
$ docker pull clojure@sha256:cc0f2004425cab443755c2dac130e3b06ae620b40ece014ef6dbb997878080a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266329118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:993c74bb02fd44763da8ef5945803c069b6193a6ae03fc7489bd6c73e1db9324`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 08:06:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:06:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:06:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:06:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:06:56 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:14:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:14:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:14:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:14:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:14:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979281c49b96086103e149ea859999065d7d8e56da642cb7c95c5f3a0934de46`  
		Last Modified: Sat, 19 Sep 2026 08:11:28 GMT  
		Size: 158.3 MB (158274938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ba1bf7e80bb9b315080738b989abd3a0eb38c3879cde4397ac6ccef43a13f4`  
		Last Modified: Sat, 19 Sep 2026 08:14:57 GMT  
		Size: 74.4 MB (74411907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e504c75f6795d8c06d9377268a37a45f6ec02ed01c15fd53bf3e9774b9e0ff0`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023b93ff08e060518a7e6092601cdc74852a63db9bb93508a144e6ec93c549d4`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8eb008dea12a5301c83aa6440f39d6b62f9c980d41b54bd977590700149555d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:533ecce960348e5998fb207ba5ff042fc8017cf5b0f4dc1950a51ebe44a79879`

```dockerfile
```

-	Layers:
	-	`sha256:d39ab0e19fb5be22f2dfeb8ac20d785b50e07e1b3f26c96302b9d856875b136b`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 5.3 MB (5269529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:764bfdc4264d2c45f3ca28bd2aa4a7d26a29e522f0878e2fc24de32f2d9b8930`  
		Last Modified: Sat, 19 Sep 2026 08:14:55 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
