## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:8587978d3e758fb7911905c792024332392010791c5cd7ca14bd09269f9f145e
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
$ docker pull clojure@sha256:bc80342ce0c9f7e760c22077c8d68f636367bbc9774600cd350623fbc832e994
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.0 MB (187038000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512cbc11b8a3e22e67b072f017b8857bc5f0929fdf8812e2d2d59f7cfa333bf5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:54:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:54:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:54:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:54:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:54:24 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:54:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:54:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:54:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7864fd441f7d2d0ccc83289ac5fa6194111ad730ce2b7ddaea8a455e61e3f8`  
		Last Modified: Wed, 29 Jul 2026 17:54:57 GMT  
		Size: 55.2 MB (55198726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e69201b22ebd107fdea9ec05ff1865ff61e03342dff01c4f3413b2e9f46f16`  
		Last Modified: Wed, 29 Jul 2026 17:54:57 GMT  
		Size: 82.5 MB (82526056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6faf45e7699ce2fd5afff53fffda87525a7564b5efd1245b07236f43044a71`  
		Last Modified: Wed, 29 Jul 2026 17:54:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a6ab5649bb3ab25f554bd236540eb0f04490e9751b24026e6487486a147adfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:950f0421ce9494c76fbdeb8ca4071400773ba9aa96675db0b08d88018d8d4c5d`

```dockerfile
```

-	Layers:
	-	`sha256:d03010c40113f226cbfc8314f875f1600708dc95fabcd61bf087e3771e4343c3`  
		Last Modified: Wed, 29 Jul 2026 17:54:55 GMT  
		Size: 7.6 MB (7589221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6015488f1ce82658bcadff7eec453729356e0bbe0a693a778bed8cf07527261b`  
		Last Modified: Wed, 29 Jul 2026 17:54:55 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3d7599dcdac6826d13c8d968a727a81e7cc742d915d76a6cc1f24aad90ed5bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186296086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:755f20edf94431b855fa45d9a0fc421b11728b01826abda7fc518c0bfd25926a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:03:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:03:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:03:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:03:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:03:19 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:03:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:03:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:03:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6323e4cac68a06df7d0d6f3d2ee89f8b73d5bd7bb0de61547e6bed4f06b4ee90`  
		Last Modified: Wed, 29 Jul 2026 18:04:00 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08babbbd56a055f5d1c9f03728526e175a55894cc705672b89a96e000b1fcb0`  
		Last Modified: Wed, 29 Jul 2026 18:04:01 GMT  
		Size: 82.3 MB (82348335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408990e64fecc7fa36a80cfe6664836bcfeac528fcdc2ac90ed5b8221d45f08c`  
		Last Modified: Wed, 29 Jul 2026 18:03:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:da473b9e4e8a426dc910116e95be1c89a6d3a79de17e16b80f249bb96b64a7d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8fb8a437661ce7eb7e7c8f886dd33e99ec064277663ddb9340993423de1fdd`

```dockerfile
```

-	Layers:
	-	`sha256:e45e1e8ee92d39178dfad9f2afb21597d4f6f014381f82da8581723ba0f7739c`  
		Last Modified: Wed, 29 Jul 2026 18:03:55 GMT  
		Size: 7.6 MB (7596314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78ccbb0210aa0bcb129e19f2a63134c8fb3393b633fa1d98d544dbbef047b82b`  
		Last Modified: Wed, 29 Jul 2026 18:03:54 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:66d8ca42d368e441f0f6ab7552f72d3ea6911577053e6941c41ba1bab2229486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.7 MB (193749906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e07041d5b72cbffe2ed005fd0214e12a179cd02b03998f773775a666d2afc0a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:53:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:53:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:53:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:53:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:53:47 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:54:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:54:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:54:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21900155a5791ba020a74353eccf4282b9e114cacf05fe783be99dc6e599ceb`  
		Last Modified: Wed, 29 Jul 2026 17:55:14 GMT  
		Size: 52.7 MB (52669122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d70d634b635a7b437e363eedf77c987dd214a7944c3972602c7afc70aff2d1`  
		Last Modified: Wed, 29 Jul 2026 17:55:15 GMT  
		Size: 87.9 MB (87946127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3d754edb7088cb553c058e17d14b92492c3cde4edb825c3d2d1595d9a88b3a`  
		Last Modified: Wed, 29 Jul 2026 17:55:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:daf700093e80c9a4f9342dce0c9071ce4e028c8f0cceb3f65c34b2250b85e2f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd1a240840a515e8e305f123a3a80e156d946d247d93f73168b8509dc7e3a77`

```dockerfile
```

-	Layers:
	-	`sha256:209e261d8d53f581dc24ecb09801872e194f993ef1d3cbf7b2bfb69d87129f73`  
		Last Modified: Wed, 29 Jul 2026 17:55:12 GMT  
		Size: 7.6 MB (7594237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c0e48b2a115102c129bfabcf538bcde16677468b6e33112f4e92b730c529eb0`  
		Last Modified: Wed, 29 Jul 2026 17:55:11 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
