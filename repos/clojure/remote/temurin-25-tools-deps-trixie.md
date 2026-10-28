## `clojure:temurin-25-tools-deps-trixie`

```console
$ docker pull clojure@sha256:5db585351ef64d5efb564496a86a575a0d07734fb5c66647a1022edac4545e5d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d8014b9c731a7e3aa8f10cc22024b22530633e2baf14b185e53ec7e606da71ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.6 MB (224596408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4efb11be166d90f6345f7d716464c66a41d1ac12e0a4f68ad772cad0018c54aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:14:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:14:31 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:14:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:14:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:14:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:14:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:14:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c1670f4cfec9e2b954ee3779007f104ae749385b1039f7506e86810c82d64f`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 92.6 MB (92618036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f95582fa27c997d0f30ff58845e0b6529b6be4d9997c46f7e70ad999fb1101`  
		Last Modified: Wed, 28 Oct 2026 02:15:09 GMT  
		Size: 82.6 MB (82569436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:680247f7c851d6c6c735cd2327da2be1d260c87345c9d99324691f1e8f0d6374`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd524ba6ccf7a6556bfaed7844cd14781e467df761dd2678bc208da0f7699cb`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5ae8a33f76fa81b4b0312730a849de20a40f4a5f70b8b9dd4f6cb3f784a3eea3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b90b94af5782c89feb994f335dc041915516c3b161008e04bab27f0a553a25`

```dockerfile
```

-	Layers:
	-	`sha256:b193578bd3d247ed7d0106c0de5717d726f32c8bee04048f183ea1ee812a4274`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 7.4 MB (7444831 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11133ec9c5e06983d4ef6a37e438014725f021a2c930fba0ad828cecc0a38b45`  
		Last Modified: Wed, 28 Oct 2026 02:15:06 GMT  
		Size: 16.6 KB (16569 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e4f6ddf42e152db80da7e5185bd931b61a3d280cd0bfde6019bd08aa9b63269e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223698872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dea2dd6c5a795f08cc987efd8fc448ebd08424bff01100368d1b71fc442f3c4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:21:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:21:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:21:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:22:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:22:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:22:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4063e86b240c7236d736aeefe4157d360e764059dda38c2a5c823f68d7d214c1`  
		Last Modified: Wed, 28 Oct 2026 02:22:34 GMT  
		Size: 91.5 MB (91528800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d043ba0f6c34dfa4c1c6472a644e4524b890c4c054ead7eea69eaaabc8a56805`  
		Last Modified: Wed, 28 Oct 2026 02:22:33 GMT  
		Size: 82.4 MB (82392848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76f6eeae8151b174521e840f9281a777f6cfcd6e5920d0c7623e5c6d627bfd3`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9813e5d4ddb8754ffb0c064a8822d0b5876f94b7e2945322fe8503a6997632b1`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:79bbd4d0fdc5b9dab5301817be89b22c6d3540c859a0b0485df517a673a04b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7467956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55015ce350f0f16cdc4fa7a6f16aaf99c281704418a22923b56aa6cc85aaa845`

```dockerfile
```

-	Layers:
	-	`sha256:c01973943017de462a0ab8d1c6f12a529d007920774141caa891ab0dba6ce4f5`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 7.5 MB (7451245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f53a33887382639b2a121ae92385b0b41ee9b62643d8e01cecfed661b46c03a`  
		Last Modified: Wed, 28 Oct 2026 02:22:30 GMT  
		Size: 16.7 KB (16711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ada23ca765b47863fa0aea2d269bb297b2b96ed86ec0cc75024204fec3a4ec33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232476532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c5aa7a55037c128facfa3c1e17b6a9020413a73d77a2190311cd45a971f38f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:15:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:15:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:15:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:15:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:15:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:24:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:24:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:24:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:24:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:24:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:677971f4056fd8f18e466293b6a0abcb78b1f4043b0ba39541c2213b7e06138f`  
		Last Modified: Wed, 28 Oct 2026 10:20:15 GMT  
		Size: 91.3 MB (91256243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:657fe8047878cde3de084011fc61aea7e7db4e8a8eb0803b042637f161deabf8`  
		Last Modified: Wed, 28 Oct 2026 10:25:00 GMT  
		Size: 88.0 MB (87997001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a35d2a59ebeb88cfeda13885272164b5e5807a692034a4e8055d4d16a38ee22`  
		Last Modified: Wed, 28 Oct 2026 10:24:58 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8c86b913f5708b6e334c4e5315de107dc73cc2f5bde969de4504b6a2baed5b`  
		Last Modified: Wed, 28 Oct 2026 10:24:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fe64a0dbfc130c8aeb79247baa12a988286e0e03496e4e5179649611867ba9b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7449200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77a5edbfc0da4d441aedeffc1ff7ec431a6957cedd984e9b6384fda0f32bbb19`

```dockerfile
```

-	Layers:
	-	`sha256:490c7132156a6d8bd4202ece9e2c8c7bf2dc1a6271c9e9c4b5e5dd64e405218e`  
		Last Modified: Wed, 28 Oct 2026 10:24:58 GMT  
		Size: 7.4 MB (7432572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e6c70f321135b4f4c3af2460c63f025eabfd4ea4c881d8d64729bd28596f98d`  
		Last Modified: Wed, 28 Oct 2026 10:24:57 GMT  
		Size: 16.6 KB (16628 bytes)  
		MIME: application/vnd.in-toto+json
