## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:8082e0c1379e1863b667a1597eeafbfca2b96dbb6e6252c6c8315c28a0c03979
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:be604babfe13feb7dad3e45820d143a77ae629428c8f6381afb30fa3f4d45455
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240844131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7efe6c3aa5a88a023fe99ad9ae8f80b49842a425703ef08c38c406a2d480e99d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:37:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:39:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:39:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:39:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:39:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:39:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:799a4ea84551117ac0bb7ecdef56104ec5b1e2232807d19d79a45568fa1a1875`  
		Last Modified: Tue, 10 Nov 2026 00:38:53 GMT  
		Size: 146.1 MB (146086140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f893fbf97ff7774a4ff5752fc13cf9a8129c4800b3e9ca2bb648342c7d213bc5`  
		Last Modified: Tue, 10 Nov 2026 00:39:26 GMT  
		Size: 66.5 MB (66508464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00343700501c000a5e846f27b8940ce9ded107f2cd65f7d4d80cf276311caedf`  
		Last Modified: Tue, 10 Nov 2026 00:39:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91285c42bf0dd2088d761d9d1ef9385cbdc15e485b0b426e6c1f1ef116ee93fa`  
		Last Modified: Tue, 10 Nov 2026 00:39:25 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7e8c29445408b3c68512967c615e5eb7edf90fa377f1741920b9bf20a5ad98c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d51d6e35c7fb33622b4083fb79e1a6cde6dec8a0aa224d653b48e8d0772a8e0`

```dockerfile
```

-	Layers:
	-	`sha256:472e0b6c65db075560865cbe8c00af967381dd2623ba258aab21c640bc29da72`  
		Last Modified: Tue, 10 Nov 2026 00:39:25 GMT  
		Size: 5.1 MB (5118105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299b51f8fd8bcfa30ee808deff1f1a09f5600f3329763c7a0b30f1fff6aeb6b1`  
		Last Modified: Tue, 10 Nov 2026 00:39:24 GMT  
		Size: 16.0 KB (15988 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:619a179c347d9b5a3dde5de414a3b0e4203c23a61a6b403823e2f7e3648138b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239603406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548728c9363193d3fc6b97fd84ee1b6726683f16a890f29842217cd2e8d4ba23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:38:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:38:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:38:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:38:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:38:18 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:38:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:38:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:33 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:33 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8fc034306d91b0b74f761a45c062598e1b36dd1f4db8cbbd4cd3750d1a084ab`  
		Last Modified: Tue, 10 Nov 2026 00:38:55 GMT  
		Size: 145.0 MB (144957208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8bf77bdb379daacfa2e6904616982cbafd33db05ccbcbc58504c87644710dd`  
		Last Modified: Tue, 10 Nov 2026 00:38:53 GMT  
		Size: 66.5 MB (66500293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f0c1b9cbb7997f092c464c8df2cde20ce4f36325246cfda4f8b9776b6b3c6a`  
		Last Modified: Tue, 10 Nov 2026 00:38:51 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f507f4c60425a504fdc57d1d92b1d0fc7bc7c5dbcfb6bda57c87d531b8928d15`  
		Last Modified: Tue, 10 Nov 2026 00:38:51 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:51390b6ee260cc1b369d8896d0da0cf1379ad22dea276f97af66c3ec5329d440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bd610d40dd1e7bdcda87b64590b9a79e0d84a67343caa5d0c638ab8288824af`

```dockerfile
```

-	Layers:
	-	`sha256:f8c9a4547a868e1447cabe585df66e923c0e8393365896daf424ef2f4a945192`  
		Last Modified: Tue, 10 Nov 2026 00:38:51 GMT  
		Size: 5.1 MB (5123866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be8c3b77e8f6ed24c11ff708027542f776e7eaf322f7c137aa877f6a444266d1`  
		Last Modified: Tue, 10 Nov 2026 00:38:50 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:df1ff2752f60d79f67e6cd1c22dda02f058520871b54e0a6e7c336bffe567a22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249289379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07df2fceb37a8189a44625bb8338141c84b3e3707d5a5f3f63bddebb09492b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:36:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:36:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:44:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:44:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:32:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:32:16 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:32:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49bb31fa4370be1b5da85fd3daceac235b0934e95508bb9b0a4a7473576892f`  
		Last Modified: Thu, 05 Nov 2026 15:41:20 GMT  
		Size: 144.9 MB (144860469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bddacf7e54ad43585261968f1610254d20e98a4f7a0ce1b3146023cc989100`  
		Last Modified: Thu, 05 Nov 2026 15:45:08 GMT  
		Size: 72.3 MB (72333806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67bdf337a9c14f779ac174aa732c3945a1ab417e940995bfadf3ca46bdd5f346`  
		Last Modified: Thu, 05 Nov 2026 15:45:06 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf9020e0bc2ad826781e2f3e8983f20513d7c08722559923928d81de1999e59b`  
		Last Modified: Tue, 10 Nov 2026 02:32:46 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f8b0b503b3ab989e36f3743547bca8ae6f458cc2e0f180726794a368ef6b8201
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65af4f36107877ebb1c6f2a2d50a341cd8b6a8ee294605f7a987fd29457a107d`

```dockerfile
```

-	Layers:
	-	`sha256:c63a2074a01d156adbc228ed74f699e992a8905e53f3b24b158792e4bf17829b`  
		Last Modified: Tue, 10 Nov 2026 02:32:47 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97152ac4c0f256fdf900a40b2089b9975141a5e4c416f15a77b290482824cf42`  
		Last Modified: Tue, 10 Nov 2026 02:32:46 GMT  
		Size: 15.1 KB (15083 bytes)  
		MIME: application/vnd.in-toto+json
