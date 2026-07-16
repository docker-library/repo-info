## `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim`

```console
$ docker pull clojure@sha256:73c3f80313eed2aa70e1e584fea8fc30a028f1c5b296f88b2968bd192eeeb58b
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

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:aeb2cca8da1b57f2b7a5b895f29ed9545c02c5c7a5d1c2814db86caabb32c09b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.4 MB (189405576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ca8812daadcb9b92ca6c8e8cb1d7d482128da69fdcdbb7e22a198aa71e31ef3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:36:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:34 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:36:34 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:36:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:36:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:36:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:36:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:36:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0d7f91226a962504e5a501a78928d86e4769ca608048209f7ad90da4630a71`  
		Last Modified: Thu, 16 Jul 2026 01:37:06 GMT  
		Size: 94.5 MB (94524333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815d0855d9927f55245955ce4b26c6d9bd3d61f678efbf30576aae78c02276d3`  
		Last Modified: Thu, 16 Jul 2026 01:37:06 GMT  
		Size: 66.6 MB (66647560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13eead023358d507a578515d5dd8e34dddddd840ed45473cb96279d359e80dd0`  
		Last Modified: Thu, 16 Jul 2026 01:37:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7979fcc71107e14d7775ffdfc24d6cbbb7904ed379c95d4feeb24f06b5e3944e`  
		Last Modified: Thu, 16 Jul 2026 01:37:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f9fd91baff757a6a14339dd9da623e68b90555f45ac4047e604a36a948ad94f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5094909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2284f4da969c39926b93cd786508f025d4946c0604f6729d3adeb499c4b8a7a0`

```dockerfile
```

-	Layers:
	-	`sha256:5073a187a793d8b707968c06550c2939f4d8e2b44717fc27531c085636bc1b71`  
		Last Modified: Thu, 16 Jul 2026 01:37:03 GMT  
		Size: 5.1 MB (5078926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05266fedcbb3f5c5cbd646ec8b103592e549792fe2f900537650c2af260af65a`  
		Last Modified: Thu, 16 Jul 2026 01:37:03 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:122e266b4f4c384241c0028313e14809bd981b7acd44eb1c0ed86b90a8df5b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.3 MB (188260542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5334051b5ef40e5d736978a16688516232ed2f1de88d90d8a78944b8f5c5229`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:32:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:32:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:32:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:32:29 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:32:29 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:32:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:32:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:32:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:32:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:32:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf3097584d943484639f9961b43156dd0e8fb8060f05088fc827c6f50965d0c`  
		Last Modified: Thu, 16 Jul 2026 01:33:04 GMT  
		Size: 93.5 MB (93504345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c9d38899388544cd96fcc1223eae1076e1d291d605eb4f7ae50a8887d52bc3`  
		Last Modified: Thu, 16 Jul 2026 01:33:03 GMT  
		Size: 66.6 MB (66637900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394654e64def4aabea36319ec3f4f8cf90a13983dd914514687f64005e3753cb`  
		Last Modified: Thu, 16 Jul 2026 01:33:01 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e84c4d0f4d5d571b06f1e9f6e7e865cebb5891ce563b2f9df6ba862e80ce54cf`  
		Last Modified: Thu, 16 Jul 2026 01:33:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:78ef117a44f3f6b62f3caea8136b587f768d3dbe4b8e81f9bfe2f9a9341aaf37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5100784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef2b8ffe3eecdb7a8c0e30c18506de508cc2eb648cb969f278e24e51842d0a94`

```dockerfile
```

-	Layers:
	-	`sha256:7d302e74b019bce6f2d33fe95e663a01d7ff945ba8ec3225bb05421acca4ffa4`  
		Last Modified: Thu, 16 Jul 2026 01:33:01 GMT  
		Size: 5.1 MB (5084684 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aeaea05752bec6125f123f946795375ddd4217f75f3d6508428d56bb935e362`  
		Last Modified: Thu, 16 Jul 2026 01:33:00 GMT  
		Size: 16.1 KB (16100 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8797ecfd863e834382023ae2a4eae3de760616e9a362b7161c90cc8afe874d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.5 MB (198457068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8037d039d732ee9b1c23c53b595be5efd03b9f6d81e6cb2d354d97785bbd1c6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:55:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:55:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:55:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:55:04 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:55:04 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 09:06:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 09:06:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 09:06:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 09:06:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 09:06:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3015897eecfc0da8a57a3f5292bac9d82783deb51fbef75d70363d1fb6a78c81`  
		Last Modified: Tue, 14 Jul 2026 08:57:54 GMT  
		Size: 93.9 MB (93902026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e708b14d7b69fb801c20cd18f3e5a12e1d1ebbeede609f7617a4c58535f2213`  
		Last Modified: Tue, 14 Jul 2026 09:07:20 GMT  
		Size: 72.5 MB (72477588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:746387808d7cc2f4af65fffffd4e1359f0909b542278729472029cb91a5e0cd0`  
		Last Modified: Tue, 14 Jul 2026 09:07:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbb94508328c9142699d9e531d1ffdd63f05890838cf898926a5168ecac3584`  
		Last Modified: Tue, 14 Jul 2026 09:07:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a8016ada5788de1046c5ef34478e39d68537b7ae61ac14c0e5f8cc4210b6a1d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5084051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca541778a726ba982a4c5aec76c3b89720edb515762342ef5181018b00622a4`

```dockerfile
```

-	Layers:
	-	`sha256:1d26c31c3b23bd4a5c05e939744c076dd63f6f5d0fdcb509b790939930bc6403`  
		Last Modified: Tue, 14 Jul 2026 09:07:18 GMT  
		Size: 5.1 MB (5068020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2a47294c8a406e2626d191a8e7b757546105ce74bff73efe1f5dbac73901025`  
		Last Modified: Tue, 14 Jul 2026 09:07:17 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:3dddf0098b20c61addc93366d43bb093e8ae8badca2d93b0e2cee940d9c2c61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182875021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:101b28e305bc03301f29854ce7282e3378791cce25de984cee1608bc4de30dd3`
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
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b5f503198dc02aa36072104c563dea2d3f655b12449c086f5a46b8a249d36`  
		Last Modified: Thu, 16 Jul 2026 01:57:31 GMT  
		Size: 90.5 MB (90536944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9094a2d88a0f5302fb163215eca90fcc863fe500f6ed824523d094af48da9f2`  
		Last Modified: Thu, 16 Jul 2026 01:58:32 GMT  
		Size: 65.4 MB (65448770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b68410f36287ad658aab8fd3826bf511306bafe0a2b7601e49954e385df11c`  
		Last Modified: Thu, 16 Jul 2026 01:58:31 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20301894c95363b4880ab9eb674730d84c6a727e5f681f8ca7a8bb2d0e1cfbe2`  
		Last Modified: Thu, 16 Jul 2026 01:58:31 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.5.1654-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d69ca4263cb54d9c5210f4330e56bb9542cf6d422de5ac13fdc9885d11cd47d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5071416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc73739bcfb9b1f2cdc4615040fe19bb8eb5d98cb48a161df088fab7156e3c65`

```dockerfile
```

-	Layers:
	-	`sha256:d527b02bbdb8ae9175365fa4c82f512e93c9471d7e6e1becfb4e509688b593b3`  
		Last Modified: Thu, 16 Jul 2026 01:58:31 GMT  
		Size: 5.1 MB (5055433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e46192d2283016bbd8c9d88159a8fc66779da845ca9d0281e2732cc025dae145`  
		Last Modified: Thu, 16 Jul 2026 01:58:31 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json
