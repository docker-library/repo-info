## `clojure:temurin-21-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:ea7bf90f7977e23bcd0c1640d4e3c9bcaeeeb0f6ca0c5990b115108323f34263
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

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b494d48e8e141d4e46c8f16a495bde0fcf02cc0d81c49cde8508080a46f54741
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (253036243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca7b1bdfab78d04a90a166642e3f1e4e63b9db8f5d613aa80b10ae36114161aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:29:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:29:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:29:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b864ffa26b79548271efef14f9a86b3e33aa4588cdba12cc2c1f5fba25f40d2`  
		Last Modified: Tue, 25 Aug 2026 01:30:09 GMT  
		Size: 158.1 MB (158120300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039bcfd88dbb70c5ce2198623c853826cfef7b090f5fb8545c884ed4f8326a20`  
		Last Modified: Tue, 25 Aug 2026 01:30:08 GMT  
		Size: 66.7 MB (66682242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70bbc99773c424ed8d189742b92fde91ec01ab153c6a2bea371c0ee4234b96e2`  
		Last Modified: Tue, 25 Aug 2026 01:30:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a19464f27ed5d80c3312f800a513b5ace9d18578e5cea3de7782a3ff9893d26`  
		Last Modified: Tue, 25 Aug 2026 01:30:05 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3f10f27a481c9e2e1c4976620dcd788197c307f14fe7aa68231067a705e9a028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd466b7046ff2b1ea8c6f16629e2ecebdc8bc65e823709078bbed736013d7099`

```dockerfile
```

-	Layers:
	-	`sha256:3f3c7ef2703df52d24f0ed5ed9f89d3b63f0497626c9b715f17afe6946f17866`  
		Last Modified: Tue, 25 Aug 2026 01:30:05 GMT  
		Size: 5.1 MB (5121088 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0dd5022fe5af60d01bb576c993fb9a8a81dc1a9c548fbe5b780896d673f2880`  
		Last Modified: Tue, 25 Aug 2026 01:30:05 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d5a867e8e234f9bdd2e73aeb5978656ac082db88f847a3899aafb7c96af8be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251189201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ff6d5e833ed5e7517e675e7d724e8a2f3a29b6f4221312f741d84104ae9151`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:34:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:34:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:34:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:34:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:34:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:34:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:34:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:34:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:34:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:34:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5210a9c68fd368df0549e847193696f3843c291c2bf6b834ed498c646649d996`  
		Last Modified: Tue, 25 Aug 2026 01:34:46 GMT  
		Size: 156.4 MB (156401944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f29df188147b21e0c0a367df7d77607064945153b640620891aadcb75bbea2`  
		Last Modified: Tue, 25 Aug 2026 01:34:44 GMT  
		Size: 66.7 MB (66668929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22c81db790c7a36f1ff7b337a0128cb2f84840be177563abe47810f5268cbd2`  
		Last Modified: Tue, 25 Aug 2026 01:34:41 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9df7eb67ec193eb9333ce65f3b1decad16243648e03825713be646ec1ec779`  
		Last Modified: Tue, 25 Aug 2026 01:34:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:49463b42edbc0e3c1455c2da5a9373625e46924f7900de7444b2bbfa6dde926d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e88cbb47292bbfa9b27b950196baca2246e00057987f7a5cf789e112d1d6742`

```dockerfile
```

-	Layers:
	-	`sha256:9b06825a09e4244de3e251a2341e3d74a9db3bc1d823fe4c555e559954914781`  
		Last Modified: Tue, 25 Aug 2026 01:34:41 GMT  
		Size: 5.1 MB (5126849 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a27d63b8f938250f6f84d0bc9338d1da0d0a1b8c5adf5442162050dd66ee6ba4`  
		Last Modified: Tue, 25 Aug 2026 01:34:41 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:33a189818be34aba55709456c7a324d9aeba4d87a4c8a1b591a5226a5726bbe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262849792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c8e4b7c119d5979a766bab66265683003665c7ad8c0ece6605b191a7699417`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:29:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:29:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:29:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:29:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:29:33 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:39:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:39:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:39:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:39:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:39:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee164f813fe2e3f1d06d318d0bd519415e0f19c7fb189a963169cf1fafc8f3b2`  
		Last Modified: Tue, 25 Aug 2026 08:33:41 GMT  
		Size: 158.3 MB (158274894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40602b32a70a55e6a4113922d2cee2c49dfb6d9ad89f49a4a793ce37d092f6ca`  
		Last Modified: Tue, 25 Aug 2026 08:40:20 GMT  
		Size: 72.5 MB (72497380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70d9291efecd56c5521523df898dc5a55f29686350c6f4a5d5f221e4ad048cd`  
		Last Modified: Tue, 25 Aug 2026 08:40:17 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df6a7581adc7b8c658b6853f570c89dc0765129908805d6ea1c2cb119ca15a7`  
		Last Modified: Tue, 25 Aug 2026 08:40:17 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:726d3bcc38360a3b6a51fd476ea1d8b93c6447b0200ec43a1589a07c2d712b02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be717144c753af5e337cb05187257d288458d563d397dea988ad8ed393fb9ce2`

```dockerfile
```

-	Layers:
	-	`sha256:8977973665f3abf89eff3bbe1d2bb24a6e7352fa4a65560fc45d79c7eb6b1288`  
		Last Modified: Tue, 25 Aug 2026 08:40:18 GMT  
		Size: 5.1 MB (5126246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c28f622291b61d2ebead538494e7c7f9c7f84c08bae1b1bb0eb703eef39c5096`  
		Last Modified: Tue, 25 Aug 2026 08:40:17 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:bea0bdaa3eeaac827767420e7a45b887fd189a19fd7237af97c36cb285b165f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.7 MB (239733773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c59ae79b9d6a610894ce2f2d3cd4220bb95acb9a71547fb73cfd16a015cf82c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:57:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:57:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:57:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:57:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:57:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:59:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:59:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:59:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a3f24365b2b7be6a120bb31ebefba7be7e45fc966d4300ec3976b14e69bc0e`  
		Last Modified: Tue, 04 Aug 2026 02:59:01 GMT  
		Size: 147.4 MB (147388360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a15bd6f07fdb3ba83d9a51843fa57b79a0a9088070520ebc02a2e33d6b967ec`  
		Last Modified: Tue, 04 Aug 2026 03:00:02 GMT  
		Size: 65.5 MB (65456103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:988279db3429747ad139e59575fcafcd1227f6c1949e1320eade1ccfd6caec87`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7a30479c2266a53cb27254d284a348210f74bd6e0744259721361509088386`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a011935ba5e24e36bd93cb4bc73d3e536b1fcc98fe0f80187bde200a4f87392e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8dd7963de63143409ab30412fa7e262c7694bc95525ea17333ae4095b15549b`

```dockerfile
```

-	Layers:
	-	`sha256:966453330ea9c4b6fa04d144340f93b2365a0e466e147e3e02537f9b57b299cb`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 5.1 MB (5107208 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82b0214fb7070cf389be398ee71bf7350401e7560a7c2f79344130190513066e`  
		Last Modified: Tue, 04 Aug 2026 03:00:01 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json
