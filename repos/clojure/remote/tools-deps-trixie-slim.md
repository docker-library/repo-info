## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:7c5c27d79a5800785e356ea02adff51f497dee303cde6e911a0eb8192fd26894
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e040a4d72f337a719e89a88f878b72d04e727f54f2ee46f17ba3847fa7013493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.3 MB (194336449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2b76019a0cef37c90dcc819800a6bed36aa3eefc0128c7d5dac04cd3e29e484`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 03:50:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:50:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:50:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:50:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:50:31 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:50:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:50:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:50:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:50:47 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:50:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8442e06779aadee5971acd97a8396fb04618397e9a1ff08fbc3570de7e0e59a3`  
		Last Modified: Wed, 09 Sep 2026 03:51:08 GMT  
		Size: 92.6 MB (92615081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:789004f96777979ad228d498a2e4765dc91a65630922073ce1f4b7aecfb3fcc6`  
		Last Modified: Wed, 09 Sep 2026 03:51:07 GMT  
		Size: 71.9 MB (71927668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79e397d8ca35f477f3a3353b665e34d6cc6f2299439def1237e081bde1255f6`  
		Last Modified: Wed, 09 Sep 2026 03:51:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ea47873f56188033f5de532c668785efce805e3815615019377c8bc462fb3fb`  
		Last Modified: Wed, 09 Sep 2026 03:51:04 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d9ce8346da24ea0e1b64fe462582621d993a449ac2d78fe700799b05a3d7b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:957094314812d1c578571b85e1d95f4d8549ce6ac134de221d2901f985b05870`

```dockerfile
```

-	Layers:
	-	`sha256:735648da60aa4055e64784ad8a1f9baf9af4542cf12b99b71e0ba1416010e09a`  
		Last Modified: Wed, 09 Sep 2026 03:51:04 GMT  
		Size: 5.2 MB (5225644 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ae542a2fed618af3475f026134c5257bced1b09b01c6487d252d5402e7360ec`  
		Last Modified: Wed, 09 Sep 2026 03:51:04 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:27dbfed60282cf742d65ab11ab53cb45b35e9da6f81ff61a038e84fe06c4957d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193822795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ecccc659e3fb23b54f24faf5b2f9ea9d3a020b0b673318dbba70834a65102f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 09 Sep 2026 04:02:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:02:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:02:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:02:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:02:38 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:02:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:02:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:02:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:02:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:02:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b6edac05d2e1aa28e99a7839e8b46922325bdd0b6ae8c14ab0cec050eb9cb3`  
		Last Modified: Wed, 09 Sep 2026 04:03:18 GMT  
		Size: 91.5 MB (91532226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba84e33e666ba4bfc3c8a14cd4393859dbe86894ecbc63d833dc4c2fcc585c8`  
		Last Modified: Wed, 09 Sep 2026 04:03:18 GMT  
		Size: 72.1 MB (72129948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aace946541aa068bce56d17ff1ec452a34c19b320ef7e7fa356c5c3b8c45b7`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea20414ae962ea6005934d6db63ff284fad2976af2790e31dbbcd90fc8d5c675`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:327a72464f833c912ab3039fb3542b9758ff9ede9e5c33e3896c05dfe1cd596b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a025012db20aaa3c99a5599e7a06ccd5b699931f4da4c5d15f4f7ab358679c3`

```dockerfile
```

-	Layers:
	-	`sha256:77b2b8bb7554159dc470ee5366439c3953421fafa65b2107bb660db63b6e50c4`  
		Last Modified: Wed, 09 Sep 2026 04:03:15 GMT  
		Size: 5.2 MB (5231426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b77e250857a52bb463f9011cdd3ec630c56538ef2302741485707c48a0ea12e`  
		Last Modified: Wed, 09 Sep 2026 04:03:14 GMT  
		Size: 16.8 KB (16788 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:6d6180a9ed7941b1a426f380f8a50615717d45188f8bb000fdf80a00e904a7c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.4 MB (202447952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576acf1e7c3a31e4cc25c17a5ebf3e68a353723865b3691851919105b25b1338`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8084f28e02f46493ed99594a968a5e403aed0d99dd596c6994e2e5a127d449cb`  
		Last Modified: Fri, 04 Sep 2026 00:32:39 GMT  
		Size: 91.3 MB (91255818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:415951b2fe17e08d183e3c0f3de1b6ebf6c5c127666f9ea90b17b3d985945584`  
		Last Modified: Fri, 04 Sep 2026 00:32:37 GMT  
		Size: 77.6 MB (77575630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03334e80eacd235ccb795c09aa39e62a1d9ac2f8597242f91b2ef4df3e48e13`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18ddc509d1aafa1664c0241b14448d67030e49da4ca20ede821a98b7513c9a0`  
		Last Modified: Fri, 04 Sep 2026 00:32:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e94080292ca97941afb4aa9cc211613c4dbe4aab0a89715cb2ed96c4d15846f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5230046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409af904c4ddcb2707527493fc3aa5676704baf1352dcf0834ed4c1fd172a3e4`

```dockerfile
```

-	Layers:
	-	`sha256:37f00bbbd8a8ea43b57a642a21148b596efd0d4652723561e4384df1da538519`  
		Last Modified: Wed, 09 Sep 2026 11:18:00 GMT  
		Size: 5.2 MB (5213339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:937018c904c6aee1a24fd303f83ec1a5b0ae40ba845799edb3d297f18e1f522f`  
		Last Modified: Wed, 09 Sep 2026 11:18:00 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
