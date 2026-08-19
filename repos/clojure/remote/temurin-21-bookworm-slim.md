## `clojure:temurin-21-bookworm-slim`

```console
$ docker pull clojure@sha256:36f150393b956284460b7f1fc96c28702c00277d497e9e69f6e833c9c2794864
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

### `clojure:temurin-21-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c6ffda9afa366ea5dfaa33a113d2e4b126272da5579c73135f3edfa7656e01bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253082446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954f5201e5ced1599ce3f25f5a6faa34db14262163c2a78eb8056b85264eafd8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:27 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:46:27 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:46:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:46:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:46:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:46:40 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:46:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08f36e83f1e3760b1c6166ca4a44d8aa83e45a47b5dd2f66db6a1fd621cd2659`  
		Last Modified: Tue, 18 Aug 2026 20:47:03 GMT  
		Size: 158.2 MB (158166938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa0f6a2176b1d06438205691c2bb90025029a2ce04437861b805cdf1f9c99b1`  
		Last Modified: Tue, 18 Aug 2026 20:47:02 GMT  
		Size: 66.7 MB (66681877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d19d62f886e75bfc5140746768563d10efe4fd31248f6e7f3fac12a19ff4229`  
		Last Modified: Tue, 18 Aug 2026 20:46:59 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc02d0d1d5bd1243666a8a641984bcfd704251301a6ee4759c6f1235fb4bf69d`  
		Last Modified: Tue, 18 Aug 2026 20:46:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1bf52518775c06d6f35598885f042a56b23f012035645270b207169c47917995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a1040e86b6bcd4eb4bcc9c9b3b455f2a10e615418cdbd6a7bcbdfbc85c7d83a`

```dockerfile
```

-	Layers:
	-	`sha256:dde940ddb3cef608c19b27be1f8768fdfa05c0215e4a75f84474e943c5890285`  
		Last Modified: Tue, 18 Aug 2026 20:46:59 GMT  
		Size: 5.1 MB (5121090 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d20cd834d222c28994110b6037f1b354d809e530b2b269cc8b8490111f3c3da5`  
		Last Modified: Tue, 18 Aug 2026 20:46:59 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cdd2733256db01f5aebb1928e88b7f8507433f408201e826197f409a8da153bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251247121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3988926fc054a5ae1b136bf3a73a7e1d801d6b53dae97a04a7fdaeadb56aac03`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Tue, 18 Aug 2026 20:46:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:46:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:46:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:46:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:46:51 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e694da3545dfb497c9bf9c2164dbeb4b0fa204bf29fc4d721bad5a6434f5bde`  
		Last Modified: Tue, 18 Aug 2026 20:47:30 GMT  
		Size: 156.5 MB (156461266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353d05c98ac47104c553b3b6fc5e5dbb2dc542f7e045c21e234abfc8e1276c5f`  
		Last Modified: Tue, 18 Aug 2026 20:47:28 GMT  
		Size: 66.7 MB (66667609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7522f722460454c1fcbb645992e0db38f5581028a34e2bc2d5253a631587b01`  
		Last Modified: Tue, 18 Aug 2026 20:47:25 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833b12247267bfbf521eb9a8a091f1fb7948b0c2c472c611332127a3b8a60d1f`  
		Last Modified: Tue, 18 Aug 2026 20:47:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8132386124116000b8b32b6eb8c10cba38c341e5ad1129c3f01112790c5e22e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:460cc3e0a142f1682183baf0d324012953db9eb0da3d1558048831f638f1dd8f`

```dockerfile
```

-	Layers:
	-	`sha256:a4ae6ebe7755d07e75749b93ccb7df2140cef0e6ec796bdaf99ff56bc4c6642b`  
		Last Modified: Tue, 18 Aug 2026 20:47:26 GMT  
		Size: 5.1 MB (5126851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:198877410ad15eaf64090590813ad24cf1d755ae8aba8114fbdec536f2804ab3`  
		Last Modified: Tue, 18 Aug 2026 20:47:25 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:2627b7ef4eb892f6248f81fdaecf942bde7aeddd6db40ff9ee8c3309f55ad797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.9 MB (262907341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ce84a53e499638a5f5c470557f864e3bdefbfd73d726bd519cf1b163ca5e143`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:35:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:35:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:35:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:35:06 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:35:06 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:39:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:39:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:39:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:39:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:39:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880b1ecc2fb81f7dcc8222cdf2b7a304459f37f09c831f48f17332832408239c`  
		Last Modified: Wed, 05 Aug 2026 03:38:23 GMT  
		Size: 158.3 MB (158343179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47998f8f15efd259954dbd854efb6812c72b7bdad04cc1c93f48f3d9bae2da6`  
		Last Modified: Wed, 05 Aug 2026 03:39:55 GMT  
		Size: 72.5 MB (72486799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f1c1fb24ca93afbc38c532369e65b7e8de7ee428a6d76f39d3f04522ba0c19e`  
		Last Modified: Wed, 05 Aug 2026 03:39:53 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f33605d3f8c939d160431e684c731fee5192c2d9d76e1b760e171af66947f898`  
		Last Modified: Wed, 05 Aug 2026 03:39:53 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17e2957be25ddb4e2ef02c30b01a51d442282c2b22ae3751b7ec28e3f2beff6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90a9f31f609c05f0ae0a1b24d70bbee03998593a1e7a18e0c2310d837393120f`

```dockerfile
```

-	Layers:
	-	`sha256:9f3e34e1cf7953cb6891d81942887dab4a06366416798003045300edf52dbef3`  
		Last Modified: Wed, 05 Aug 2026 03:39:53 GMT  
		Size: 5.1 MB (5121045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62a8452a628ec41eb0f7dd46bcbebf945a21a512d61922e083cc1fb28c2bd335`  
		Last Modified: Wed, 05 Aug 2026 03:39:52 GMT  
		Size: 16.0 KB (16035 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm-slim` - linux; s390x

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

### `clojure:temurin-21-bookworm-slim` - unknown; unknown

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
