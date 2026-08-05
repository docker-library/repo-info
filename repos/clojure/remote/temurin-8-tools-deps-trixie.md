## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:bd30ad203a6349a58f3b7ea1f19e3036754b4913927ba36ac51a0092ee19f8c6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:88d36cdbfb0fa738be99932a24d91fbc28e21fbac71ab28caaab9784e5191c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187049329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34d55aed71425b5bb5bc41c0c709618d2af7b235fbb99ed89b9421816d56c3e3`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:17:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:17:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:17:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:17:49 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:17:50 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:18:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:18:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:18:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a5959d5ac0106284067ecce1b81c6b219d1a284f7061cc05848da4c0f653a8`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 55.2 MB (55198702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eed7a8a0d52f9fe054f66ce3ab7bea9c0f71d66f9e720af703f9a7aaee7274d`  
		Last Modified: Wed, 05 Aug 2026 01:18:24 GMT  
		Size: 82.5 MB (82537669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9d951e79c22dbeacb83ef2f470c3406d8a17a65fae10d162cc99cd283b3714`  
		Last Modified: Wed, 05 Aug 2026 01:18:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f6f9296a113bb2f9c5ad43eb04e4aab9bca6daabae56d6d16f1f5e4e5fd74c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e10d9b8678ae695a97091f874e5369fc1e84853691f72ed5dd01fa7b16b33c63`

```dockerfile
```

-	Layers:
	-	`sha256:6ce918bf0d201883ccc8d0fc418df17d1642701b6d02cc77866da3cd4dfdfded`  
		Last Modified: Wed, 05 Aug 2026 01:18:22 GMT  
		Size: 7.6 MB (7589253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc4efb049ab7b3cb25881d419df1d401f9c91c2e387f532e39d3ca188673a42f`  
		Last Modified: Wed, 05 Aug 2026 01:18:21 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:32aefb8645aea255c46524d35f87efa913aa664335e62c303288cb68d193fb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186306709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2f4524569205f4bb9e5f906241e88210e0c2814e10830d513bf79ed5aa11118`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:23:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:23:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:23:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:23:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:23:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:17 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e27e3534dc1a2bb43afb4948ae8596954b41f00bb8890cd8bccf858474a05c2`  
		Last Modified: Wed, 05 Aug 2026 01:24:34 GMT  
		Size: 54.3 MB (54272904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a70e3bda572d8aea8e47858c621373a541bdaf8da68ca9753ef7e1f1b482c9`  
		Last Modified: Wed, 05 Aug 2026 01:24:38 GMT  
		Size: 82.4 MB (82359315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ef304aeadc808951f51276c672c2fc4219536db9c3ed510746963e8ea6eb72`  
		Last Modified: Wed, 05 Aug 2026 01:24:36 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:47dc8bde43d41b159df3e79a467dc119bf51a2d5110d106690f46b63b738f2f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c9d30a70b23be15e87a8bc05c4671e04dc721babba5adcfc6ceb19ff2688ce`

```dockerfile
```

-	Layers:
	-	`sha256:f3d44b7fce821c0c888446c100c1290507b2257a88857f7661c3dfc5e15cc046`  
		Last Modified: Wed, 05 Aug 2026 01:24:36 GMT  
		Size: 7.6 MB (7596346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fad61c32f374a809fac093a4089f60d5332e61b9df9ddecf68331bb66a345d35`  
		Last Modified: Wed, 05 Aug 2026 01:24:35 GMT  
		Size: 14.4 KB (14440 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:5584df824d2a0231f45c405acf78c7307e7f3ccfdd42bec3a80d4f24d887ddc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193751735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56d5d365757a64a6d93a5013d50611e9fc5a02baed48d012f8def9ff87edd9d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:35:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:35:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:35:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:35:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:35:55 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:36:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:36:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:36:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77a0742970bcd39233f3a4d0e5fa19ecba91d158612a7760971b6cc1a7054457`  
		Last Modified: Wed, 05 Aug 2026 07:37:25 GMT  
		Size: 52.7 MB (52669118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628983c7ca23566d03f829c73941d4da5103142e80251e8c9bf6e86ced9c3cf3`  
		Last Modified: Wed, 05 Aug 2026 07:37:25 GMT  
		Size: 87.9 MB (87948367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a5023a886170b8634109d2f8530b1209864e5e838640a3d6a66827fa0b2182a`  
		Last Modified: Wed, 05 Aug 2026 07:37:22 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:35926f95409cdff1a38565f0d3286959736a45d01bf126538a71a3e2a0c3f515
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1b3e4090bde36c839ca8da446ecae03ef00fbfe6e0e5c4e2f8a5e802f6b84b0`

```dockerfile
```

-	Layers:
	-	`sha256:c8ded2328350e1f3e432ba93eea7921fed59c23d8afa7052a7d7c1974ed5facc`  
		Last Modified: Wed, 05 Aug 2026 07:37:22 GMT  
		Size: 7.6 MB (7594269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3b652b34417ee6ca3d06d34186e801ff94c3224da6c7a70e076a663dc265a0c`  
		Last Modified: Wed, 05 Aug 2026 07:37:22 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
