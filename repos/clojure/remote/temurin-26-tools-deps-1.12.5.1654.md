## `clojure:temurin-26-tools-deps-1.12.5.1654`

```console
$ docker pull clojure@sha256:1d1da8b54ca2a9716ac3c8b57c833347a7a6ebe6607330318690e745c2a4dd25
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

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; amd64

```console
$ docker pull clojure@sha256:05b6f40ae79e5cf6c0b544766aea171809a3e7193823a6a623d7cc3cdca1351b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221153077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054bc3855a7dd8f9f1a51fbfff0b455d9ebdbfca1f3f069abf177b55c1ab0b45`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:36:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:24 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:36:24 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:36:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:36:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:38 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f47d558302b832eaa1557cc5f08c936e485e7de4a1719d4516d7510a2f53225`  
		Last Modified: Thu, 16 Jul 2026 01:37:00 GMT  
		Size: 94.5 MB (94524351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe96ec50314b4c6f8c22eb06bdb805d567c515518b63ca390da9de0ea62cfe8a`  
		Last Modified: Thu, 16 Jul 2026 01:36:59 GMT  
		Size: 78.1 MB (78130283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13d1933b9b68d41519c8a4bf4f2ad71cb82dfeecd79a05b53918248566a8edb`  
		Last Modified: Thu, 16 Jul 2026 01:36:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f7fcf4f8dbe295f0950709babb3ad96a2341722b6f322f94b2a1ab172ef52ba`  
		Last Modified: Thu, 16 Jul 2026 01:36:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:d53b0baf32df2e02dc8b8b63b2e496473885f587fc427ccf05ed19bd2018f105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7358354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d9c07f7ef1410f575ffc1ef12c7e760ff2e680c0ec3896f80875afd916accdc`

```dockerfile
```

-	Layers:
	-	`sha256:81519d3ffee9551ef286550f6a6845956e4492c64d3d574ea3c22c03c298e19b`  
		Last Modified: Thu, 16 Jul 2026 01:36:57 GMT  
		Size: 7.3 MB (7341745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b556a1c0ddbee6a07ba160b713e5ddc2b3dd3d38f1ff381109d6afba618d6a3`  
		Last Modified: Thu, 16 Jul 2026 01:36:56 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:13ae95854b9a164e66d9117be1f3752d5609bd0df7af7b91dbfcd59b01d272f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.0 MB (220010632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58e3ad9085ee780fcf0f3e2da090fb4d9c9126a6911301670d7c8bcb77c405fa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:32:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:32 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:32 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:46 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0544ebd325e494cc0b2c46d21201f2e789f27c4037a9db19b2519a283fdd6ae9`  
		Last Modified: Thu, 16 Jul 2026 01:33:08 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16ddca60d6be37772d326ca8ba07221f4f8364e578184dfedaae1649116ce12`  
		Last Modified: Thu, 16 Jul 2026 01:33:08 GMT  
		Size: 78.1 MB (78121560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42da9dc4fbb469e170c8b96d51e6a4923510b20c55baab7f332e0b7ed2c5386d`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aac38f8beade902527be3a954f3b39da8342e478f1acbecd1181a87fe826af0`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:af388aa76e9074b2c43bfbb18125684e1e279fc36886605518f09db8ff86acfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7364280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8962009c7dffb3982c08f65165eebd2035915141e4243af7485adae0b0324036`

```dockerfile
```

-	Layers:
	-	`sha256:7831cd05f5dda6c66845395cc17bf3bc35464f28e23df9d5da552ef033c45ea2`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 7.3 MB (7347529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d253fc72e6a6a9e9d628d96acd03b8dfd84c31df1b6e7e645d5c3b5f520d7682`  
		Last Modified: Thu, 16 Jul 2026 01:33:05 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; ppc64le

```console
$ docker pull clojure@sha256:4f004913bc45f01d87019d9801d1efb95532d69fb1ce019816639a9da5e52270
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230204658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a846de801dc41e2c87479689499784c6dd0e7192373c5d2197283dae08861e3a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 03:08:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 03:08:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 03:08:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:08:01 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 03:08:02 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:16:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 03:16:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 03:16:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:16:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:16:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a95763fcb07d7f243299fcadfb94f05cc61b7796cb6cb6e13d400e802e5d38`  
		Last Modified: Thu, 16 Jul 2026 03:11:15 GMT  
		Size: 93.9 MB (93902053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4922827269fa8f631b17585635f316152cfa6a2c0d5802e6a9564a241e5ac6`  
		Last Modified: Thu, 16 Jul 2026 03:16:58 GMT  
		Size: 84.0 MB (83959729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f040ec9a549a68399660d0671146db21e654a3b25cb0c055189667a7320c0714`  
		Last Modified: Thu, 16 Jul 2026 03:16:56 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aeec1084d5ed268d19ffa8b84af866affe5a871afe9c8269ff4954078cc1c63`  
		Last Modified: Thu, 16 Jul 2026 03:16:55 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:37d6ae34223392f2cba4a9a95430c69ef05f6871d61463a800e12669b4927c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7347578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724a8caf56cf45720145c7e89259da34a783b5243b134a68e919a0c96631a746`

```dockerfile
```

-	Layers:
	-	`sha256:2f6865620486d9c6ae7892814a52eb3b12b92d5116f8f2385c896bb8a06849ee`  
		Last Modified: Thu, 16 Jul 2026 03:16:56 GMT  
		Size: 7.3 MB (7330909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:937709dff8ab28d411c5a9da95a3a02de86a90fc0acdc6c201c7d86ae1448c07`  
		Last Modified: Thu, 16 Jul 2026 03:16:56 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654` - linux; s390x

```console
$ docker pull clojure@sha256:89157921cceb0dc5962af3bb7396762bcc2f7598f82875199df5a0bf6124e035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214634032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20084d5c6acfcb672e03e779f9685976d91714e05249161eba6a0215fb6ceabb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:55:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:55:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:55:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:55:53 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:55:53 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:58:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:58:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:58:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:58:08 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:58:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b5f503198dc02aa36072104c563dea2d3f655b12449c086f5a46b8a249d36`  
		Last Modified: Thu, 16 Jul 2026 01:57:31 GMT  
		Size: 90.5 MB (90536944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816013108858219fb0e5d0940a45be7f30cd9be80d0287c348c858791865424b`  
		Last Modified: Thu, 16 Jul 2026 01:58:35 GMT  
		Size: 76.9 MB (76938769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b68410f36287ad658aab8fd3826bf511306bafe0a2b7601e49954e385df11c`  
		Last Modified: Thu, 16 Jul 2026 01:58:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20301894c95363b4880ab9eb674730d84c6a727e5f681f8ca7a8bb2d0e1cfbe2`  
		Last Modified: Thu, 16 Jul 2026 01:58:31 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:bd4101f3adca672545358572ca6ea2b2e30f74f068772e85f12d70391da9fbaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7334859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b0a17c80f1ecb63a819cbea6c933b504bddc3f5314ad34ad1b8a60d1d4950f8`

```dockerfile
```

-	Layers:
	-	`sha256:e54b28e0301501a6d17bb62eac2cdfd7e065903ce6ee75b70b1205cc3e100755`  
		Last Modified: Thu, 16 Jul 2026 01:58:33 GMT  
		Size: 7.3 MB (7318250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7a5d661000bb9d907c82ae84701c57176a902edfde1ce5c33e5bf38d12c0913`  
		Last Modified: Thu, 16 Jul 2026 01:58:33 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json
