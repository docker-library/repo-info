## `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:6ca84bc0db30be9f732e5550e719932472dd6f28cf844f31aa8f9d1f291d3cee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1ea5f5dea7e864e5cae810bcd7a698de7d46371cc2d5632124410bb81de88b64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193270548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:077ce5acedf8cfce3ed2876a24c13dfa09f55ab40a65981e8a5e830bb1db2df3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:58:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:58:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:58:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:58:12 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:58:12 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:58:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:58:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:58:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:58:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:58:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3823c79a431f26aa8a984ef05bc2bed7fa6bb030b85d737fa547334600d572d`  
		Last Modified: Wed, 29 Jul 2026 17:58:50 GMT  
		Size: 94.5 MB (94524321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5fb86995005bae540af6760524f17f5cc53556cf604889f29031ee3a8f56db`  
		Last Modified: Wed, 29 Jul 2026 17:58:50 GMT  
		Size: 69.0 MB (68964279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4f2259157ee3cb86775149bc5932964d6d31ff1303b9f36b8d13fe3cee4a7e`  
		Last Modified: Wed, 29 Jul 2026 17:58:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d8c8d51cb92510e47884b0215a13d927bde3a8dc1b3a7d475344f3711da6b0`  
		Last Modified: Wed, 29 Jul 2026 17:58:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ed846a82a4ed53462fe70439d0d0bf572da403def91d8d62d7778654ab7d4923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7163b5fd1f4700972f861d6d828b201818e8f3c30b08d9a4e425b4a91353a0c7`

```dockerfile
```

-	Layers:
	-	`sha256:7356da54c3ce8e6e5f61453ffb15c4297a9c3467998a8cc171c62905818a83ce`  
		Last Modified: Wed, 29 Jul 2026 17:58:47 GMT  
		Size: 5.2 MB (5222223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6857b13938b08cf1a0968b72795abd431a337cfa2a91a64d46aaa5f4e8cb187c`  
		Last Modified: Wed, 29 Jul 2026 17:58:47 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4069703767835c8d2f162644ac3cdea8068772b0f0142e83989c0c3a9423eafc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192438159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5da8abd06996ed47950831361b3a6a81905c9e798bd792599e3c6b2134c9280`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:06:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:48 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:07:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:07:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:07:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:07:05 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:07:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c9631d01d99fc02ab5789afe39fecc3dce8d79b809ca0d72dedc03d15d69e4`  
		Last Modified: Wed, 29 Jul 2026 18:07:25 GMT  
		Size: 93.5 MB (93504310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07849ef6244bcc74b4c0ee341a921266f8259a065426bc38b4fa29b18b23868`  
		Last Modified: Wed, 29 Jul 2026 18:07:25 GMT  
		Size: 68.8 MB (68789101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c256c78535eaea527f382879d10a27b302cf702e3b5c2fbbb442d86b5339b8e`  
		Last Modified: Wed, 29 Jul 2026 18:07:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba19f365551e64cb3622d9512527aeeafc08971c00c7fb41b34116a521e6fb7e`  
		Last Modified: Wed, 29 Jul 2026 18:07:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b0750eac811995f88c8cb32f28f6a0b4f4b9c3e16f731c6bf82e9963f896b67c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2fb4c79f6dcfbd942208ae35e8fc1fcc04b5db3a10cc39e36db7c6de6b21e12`

```dockerfile
```

-	Layers:
	-	`sha256:c1176b705cb28357ca82f7e0eb9b2854c63e406f135e3b85d3bdd9687e8e13bd`  
		Last Modified: Wed, 29 Jul 2026 18:07:22 GMT  
		Size: 5.2 MB (5227981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:938750f5c740f94bfcc2a0fc15ffa406f21cf517c3c57e46c86f173bc564539b`  
		Last Modified: Wed, 29 Jul 2026 18:07:22 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a888ddd53dd35597761d6c92dc157f18ee08af2779b8adf1a8058f32351136c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201887876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d42ad604d15297c8ffd4742e300d394c189494aa8cc512c6c52283dce2772852`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:19:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:19:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:19:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:19:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:19:30 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:20:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:20:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:20:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:20:08 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:20:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc9c6bcaa1a78ddac0e660501283e53e0c5705588367702a32e1602bb80f863`  
		Last Modified: Wed, 29 Jul 2026 18:20:54 GMT  
		Size: 93.9 MB (93902028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255d6667a5cd2e80a4a207a4e03988ee96ce7c366a09bba37fd942a04b7cdcb0`  
		Last Modified: Wed, 29 Jul 2026 18:20:53 GMT  
		Size: 74.4 MB (74383329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b8462e6c1d0816109f427e7d3bc7ed5680335c7233b1a5f3639987c76df8413`  
		Last Modified: Wed, 29 Jul 2026 18:20:50 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0091e426526321897ef8b8187a06afff33461ce976ac72abc7db49ee6ff8c470`  
		Last Modified: Wed, 29 Jul 2026 18:20:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c1d3eb6b36efec6c85555fe42b68b8895cf0ec5e99398d1316273ae788ef7334
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5226537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cddb624bbc2a04b0ff1702c854abda2a1a473e8541d8353a24a8d337f879ce8`

```dockerfile
```

-	Layers:
	-	`sha256:cc569e78256098c5e9ec78bfecedda7204a7a7566b62a0c42a41ee30b381df48`  
		Last Modified: Wed, 29 Jul 2026 18:20:50 GMT  
		Size: 5.2 MB (5210530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8dbcfdb8899450590b25616d745a6a03980489244913f07c37bb291299b3c26c`  
		Last Modified: Wed, 29 Jul 2026 18:20:50 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:714aaafbcb03a9e8d51ca5e19edf360aabb6ae488ea53896926155b62477ddb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.3 MB (190334004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50e4fb3015b8922a111c8f0ef8533009b75fea5d6ea45224e88f45614382a0c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:25:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:25:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:25:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:25:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:25:34 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:25:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:25:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:25:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:25:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:25:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47c4dd319d1a40976680f4f987249004b81db27bdec22e22c627aa3bbceea09`  
		Last Modified: Wed, 29 Jul 2026 18:26:28 GMT  
		Size: 90.5 MB (90536958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1182773fdbf987168ed6fe8855b483c4ec1b81e6740fb0758a585a496f04cb38`  
		Last Modified: Wed, 29 Jul 2026 18:26:28 GMT  
		Size: 69.9 MB (69949370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1dd4e1f22d038f277c6ba9249f0a437093b3e9755838bbdcffdd7aa6b90c31c`  
		Last Modified: Wed, 29 Jul 2026 18:26:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf272b62eee805dedc11f8379e134e7a2eeb3fc4f3467cf22cd6c6d73193a612`  
		Last Modified: Wed, 29 Jul 2026 18:26:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8d1922e1b34c9baaf5503d9402f94f024eee12c1cac8f0793f501f498219d173
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5219292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d3d842f24aceb5f259d3a1bb2621754fa66c1118b9f3ead9be4fb2e25d3f852`

```dockerfile
```

-	Layers:
	-	`sha256:8d692016917f6fe0b7e49704a0e0c70227e016ead753efd10d5fbbb56f8ba668`  
		Last Modified: Wed, 29 Jul 2026 18:26:26 GMT  
		Size: 5.2 MB (5203333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5289328398ba32bbe2d112247c8e2f6f11af019411f398f9dd5246f9c9ebec2d`  
		Last Modified: Wed, 29 Jul 2026 18:26:25 GMT  
		Size: 16.0 KB (15959 bytes)  
		MIME: application/vnd.in-toto+json
