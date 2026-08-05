## `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:35f029893c8c38a6f458b70f370f112c0abd5bf600ae32f82850c639e8dd4e45
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d0cadd4a88a96df5d5c8c6db1e56257dc7b97626ad2a040267c2c76c26b2ab3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.1 MB (253057643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e19d27b4aa22b8351329671da033a2101def9f7323c30de083d925b36272ce`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:22:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:22:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:22:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:22:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:22:39 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:22:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:22:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:22:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:22:53 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:22:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929ca09a328d8ca0e384e179411fb1a6d5ccd061a4ca66ea2a6bf4f96c8bea36`  
		Last Modified: Wed, 05 Aug 2026 01:23:17 GMT  
		Size: 158.2 MB (158166900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89a582c2182eaf4e2fb368890c1101026c334a35093a598cb00b4d8094ba018`  
		Last Modified: Wed, 05 Aug 2026 01:23:15 GMT  
		Size: 66.7 MB (66657115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f88ecf3e3259582220bbf371f0891ba6e4cef23f570865a9ab9d37906e6d336`  
		Last Modified: Wed, 05 Aug 2026 01:23:12 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d43fbcc8337fc8b5b393bca2761ea33d5c977f69f30eb9e67a5fe8d7053632e9`  
		Last Modified: Wed, 05 Aug 2026 01:23:12 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6fac964aafdadbc5f542f7ab22f5c3e9fbf63064d79ab5dd24c82a5aaae3ab18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5131877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358427de397ffe5db3933bd9a8202c6930be42297a6a19884efe80bb2ab80465`

```dockerfile
```

-	Layers:
	-	`sha256:c01d068fb3f470a53011c2c3db461946926802aad5b24e9d4f099b56bce55e55`  
		Last Modified: Wed, 05 Aug 2026 01:23:12 GMT  
		Size: 5.1 MB (5115887 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:963fb778ab30593f3b087b2a05ddaa0ee2b031e13dcdffca7f6c2444e75dc07f`  
		Last Modified: Wed, 05 Aug 2026 01:23:12 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:87d26dce29a2a19ce8c45dd760c2e793b25609295aafffd1e2fb051f7b27c42d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.2 MB (251227948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e20d08579b2d9f5587bf5e04eb9565c2d133450eed8f6e3c4f7abe50154bd07`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:28:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:28:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:28:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:28:46 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:28:46 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:29:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:29:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:29:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:29:01 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:29:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83581a92a6e096b6520d07a7f6ad34e58fbf0b64dd0e383874987e491955fca4`  
		Last Modified: Wed, 05 Aug 2026 01:29:25 GMT  
		Size: 156.5 MB (156461330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e9ba8a78b7eef67915de6cc5e48f6ebf2ad70a642ee0a6ec3f1ddd9c5493b4`  
		Last Modified: Wed, 05 Aug 2026 01:29:23 GMT  
		Size: 66.6 MB (66648377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b459b7058377ccdbf3a25d1e64b5880a464a3a23262be7f12db88ae0fd5995b`  
		Last Modified: Wed, 05 Aug 2026 01:29:20 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616078b5748c4230ea434dac59af413d1200ad53b80dcb5c16397031289c0aec`  
		Last Modified: Wed, 05 Aug 2026 01:29:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:afcd5932feb4547cf3e50af74d2e8137ca6ff051022f0ea5e7f05c437024244a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ffd6571f41cb5afa89de65dd2a340bab119362e1419e025807666ef0169305`

```dockerfile
```

-	Layers:
	-	`sha256:86862416783c9c89a7dcfdcfffb5916144f889afc9f787615f8b4d6bd5a5f740`  
		Last Modified: Wed, 05 Aug 2026 01:29:21 GMT  
		Size: 5.1 MB (5121648 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f0fd19069dd720ffb273a40a59d1b0da53e0127e548f9f1087469318fa28745`  
		Last Modified: Wed, 05 Aug 2026 01:29:20 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

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

### `clojure:temurin-21-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

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
