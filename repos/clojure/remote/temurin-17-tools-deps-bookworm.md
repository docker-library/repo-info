## `clojure:temurin-17-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:b57da769aa0f563fe097b09f6f1560a2e97d0168f0f53a706f5bcb9ca353b47c
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

### `clojure:temurin-17-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:61fe14c1d69807e98764da66e0a217d1d1279da49e0e79ee9c30869a4dd34962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272549253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355f105c97b9d4a74c206c38bb2e6f22173a741e9f28ca8e424687c582088d1d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:55:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:26 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:55:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:55:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4013d511fd02226f4aa3b4c03e740c6d2b5030bccd25fa1505c67c6bb8114c`  
		Last Modified: Wed, 29 Jul 2026 17:56:07 GMT  
		Size: 145.9 MB (145906279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0ba7b20ad4eb83641a05976108b1c8f382aa912f7478468dc422ed1bc22765`  
		Last Modified: Wed, 29 Jul 2026 17:56:03 GMT  
		Size: 78.1 MB (78144531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2600a609737d9ecea8bb1c5e7e44d9a6288bdcf80437cb334c01c4d0d843f4ea`  
		Last Modified: Wed, 29 Jul 2026 17:56:00 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f534917a2588514ce0cd30553629b35d6267368b9abe64a29b951d72038453`  
		Last Modified: Wed, 29 Jul 2026 17:56:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fc5f9074c3c5d687f432c7cdd7f75b579310d139ac62cc72075e10be9a1084f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11022b8aefc47758c4673b42e1897a3a037379b4b7caef136ad81acc9b15a789`

```dockerfile
```

-	Layers:
	-	`sha256:525f17e30844982278f9a2b303ecb699a8beee80ebfb8cbdc06fc82fe86f7594`  
		Last Modified: Wed, 29 Jul 2026 17:56:00 GMT  
		Size: 7.4 MB (7376170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a24a5a98604e9492462ace0eb871177fcebd73fdd247126fbde0b9a885aae45d`  
		Last Modified: Wed, 29 Jul 2026 17:56:00 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d247e27ce4b37c7b9b1f73568510cd6587d4b4f5dd703439988aec2eb8ae861c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271238114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657ba02005561400515e8b2cd6ae8f564dd673395625e23f4e66e5036e88f9aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:04:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:14 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:04:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:04:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d78c7656fe816547d7d2bf2c86c3d8bec447c5ad84405708c895887a092b5c`  
		Last Modified: Wed, 29 Jul 2026 18:04:52 GMT  
		Size: 144.7 MB (144724318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d84def0d60f8163168d39cb45997177de4387ba322d03ce313a055355e032c`  
		Last Modified: Wed, 29 Jul 2026 18:04:51 GMT  
		Size: 78.1 MB (78129065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f143def2043e324bc67d8c3e9b7af62f906a394ec4b3cf5ba7890914ec80448`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc7322aaa3f1ab97eae69f76eb07ec7a91932a1f0786cffd91c9e19a008f21`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:561876b7ede54af01853e797c2a1e442dce60d914fbd66fa7ca50b247b15eff3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de75c4a09617f2908e6744abcf274a837b7c4bbb9e39f7ea8239af4e796e985d`

```dockerfile
```

-	Layers:
	-	`sha256:a1f66a1fc6bc7ffde4810e2ce981258fdd62018f01eee38672f627f6f29968dc`  
		Last Modified: Wed, 29 Jul 2026 18:04:48 GMT  
		Size: 7.4 MB (7381933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74716df226e738a75465186e983ab63e093d59989334648275f1d329ee0ebd6a`  
		Last Modified: Wed, 29 Jul 2026 18:04:47 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:79c3c222bdeb919bfe20dd0fe6e18b5b12f6367f7e7e335792fd849d860e0050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282082798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e5bc085695556326e63fc06f1f3d4914e9d366b5ba0bb2ca3e38b257027f75`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:00:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:00:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:00:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:00:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:00:58 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:01:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:01:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:01:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:01:34 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:01:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff02fe477cdb5b407c1cc5204620762ebf2bd65ce87f5504c73ab2ad765be52c`  
		Last Modified: Wed, 29 Jul 2026 18:02:18 GMT  
		Size: 145.8 MB (145766191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bea15774e4ee2549e7422cebaaebac959035693fd8fc1d121b14fd05f59ff9fa`  
		Last Modified: Wed, 29 Jul 2026 18:02:17 GMT  
		Size: 84.0 MB (83973728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad22e2da3204c4640e4f007df0cbe7f077c6d3491398ac005a0015a46b93c324`  
		Last Modified: Wed, 29 Jul 2026 18:02:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25aa8ae1460b44f1632c7820373ec4b532d536a1923ce3ee9b4e8a80f367a351`  
		Last Modified: Wed, 29 Jul 2026 18:02:13 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8507a2cf864bb91918890cd599461ab5d5807f245f8ea164509af94d9875312b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6b5b2cb53b7e0f8446ff77e064c78227b2726a2b28be6515bb12af54897f6ce`

```dockerfile
```

-	Layers:
	-	`sha256:bbd7b6e8ee66a7a954f99a08a46c542f2eca585afee515729eb5cd66e561e84b`  
		Last Modified: Wed, 29 Jul 2026 18:02:14 GMT  
		Size: 7.4 MB (7381386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b98fde36b781525f36823a58834c939eed39c82e3fdfb7c11815896311ee66e`  
		Last Modified: Wed, 29 Jul 2026 18:02:13 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:0bdb39b75ad1e9212cde36bfb42d04e9574928b3a589c2cbd90d23a8f644e888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260004630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dde9babb0838ec3f06aafddf5161f265069f7103534433e380f27cb375275cb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:19:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:19:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:19:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:19:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:19:25 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:19:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:19:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:19:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:19:43 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:19:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a81e33b5463e381d3fbea293cd4893c64b3947e54102e5802a35677795e7bf`  
		Last Modified: Wed, 29 Jul 2026 18:20:20 GMT  
		Size: 135.9 MB (135910473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f749738961452298ea43514a36c257bd3d1d918ea2d78888eeea6771e10797f`  
		Last Modified: Wed, 29 Jul 2026 18:20:18 GMT  
		Size: 76.9 MB (76935837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e9895997c97802c29a49dfe640c108f426a7e475af01265f76533552991ed3`  
		Last Modified: Wed, 29 Jul 2026 18:20:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc2b2b8f5e0b5a25291c350145e41685e177905b303e96c5adad0ea970073d6`  
		Last Modified: Wed, 29 Jul 2026 18:20:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ba1639e73ed0d6f9f5c6ac7ed5c0300605144ab0b10258b08710468de34dc882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1195179f7bdb028588d8ecf7c574da28b7269dadf47a38ae3638a0793bb61b0`

```dockerfile
```

-	Layers:
	-	`sha256:15669d7da992d2cfd1fde0f2f541710adc7ea42c32f50a87b12dca7efa97e97a`  
		Last Modified: Wed, 29 Jul 2026 18:20:16 GMT  
		Size: 7.4 MB (7367489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5bd151d203cf2ea087a571360fe17315d69e66285c688ebac3f921909f071aa`  
		Last Modified: Wed, 29 Jul 2026 18:20:16 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json
