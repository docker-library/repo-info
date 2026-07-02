## `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:4f1ae437f8d9036718cc2a96360d35655500549a36fd35145503ea49984f8b03
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

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:0972885ea6f97ff42f0c64b5c482a682f11bc7a73d08d768ec8cb4e3391a72bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.3 MB (191312121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:313dce5196a0a328e230c3998c48af8b1c32108ea37b4c483b51681cdd092f0f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:55:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:55:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:55:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:55:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:55:37 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:55:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:55:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:55:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:55:52 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:55:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964d579c0d820d18f8766f2a285283bd5a9d0ad8b9d0cf22d4fc09f876fe4bf7`  
		Last Modified: Thu, 02 Jul 2026 05:56:12 GMT  
		Size: 92.6 MB (92574565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:956649376ce767ed5f43e5e7ae8544a80f985edff12cb7a979e69a2902ec44cd`  
		Last Modified: Thu, 02 Jul 2026 05:56:12 GMT  
		Size: 69.0 MB (68951095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49d182202a90c724e0a135ce587043d76f00b85904d1331c13e45e399ae8497`  
		Last Modified: Thu, 02 Jul 2026 05:56:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d825e4bff44af80557872f31a2641122b048d8d560352b58a757caad982cefe2`  
		Last Modified: Thu, 02 Jul 2026 05:56:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8e8a6be5174495c0e218bbfbd4ac9f44a2dd60d63625701ed088c80484246be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68adae33da3beb7226e642e32d5faa253bac6d496ba55f8f9cff0b118ed7843f`

```dockerfile
```

-	Layers:
	-	`sha256:258a46bebd2fb4a1a5f98fabfbdd66ade2a10f5995799d823175e9e90de5255f`  
		Last Modified: Thu, 02 Jul 2026 05:56:09 GMT  
		Size: 5.2 MB (5225360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4fd91bcd4005886ef85a892695c788926ba248cdac0755c3f130185fb9bd5039`  
		Last Modified: Thu, 02 Jul 2026 05:56:08 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9421f77f683f930c8e396178daeb29e7fd6163c6d21546c63a0505f31cdfc503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190469691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052c940ed3ccc2b5498b64fee0e3bf90757d3427149f3a366c2d7d7b53387eff`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:27:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:27:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:27:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:27:36 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:56:08 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:56:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:56:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:56:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:56:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:56:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3522cbf0c67dec513eeb02c89a48f3d35487cff677ab4262c6ddd11dbcc6985f`  
		Last Modified: Thu, 02 Jul 2026 05:28:37 GMT  
		Size: 91.5 MB (91542251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0c1185f5cbce9be9dd260bad49acd2d5031c0d7b9e35925482ef08be8b3e1e`  
		Last Modified: Thu, 02 Jul 2026 05:56:47 GMT  
		Size: 68.8 MB (68777843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f84960a8a06ec21dde79262dc759cd4354580ab8644c831d8aff8efa87b402`  
		Last Modified: Thu, 02 Jul 2026 05:56:45 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735abde84cd20e36429315a3eb33bbf3d57c9ac2206a3fb9030bdc49ec964aa1`  
		Last Modified: Thu, 02 Jul 2026 05:56:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1e1fa6dc8e8d5e2bb202cec17c5ee4994314dc2df061bbc4fbec2856adf55cd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:506fe6cd85807406110e612dfbcee6cc4465c60ae1168a168d3145181670e356`

```dockerfile
```

-	Layers:
	-	`sha256:2395f110db7cd796dafe158179505ccece691276ee67583199fe173222a93bbf`  
		Last Modified: Thu, 02 Jul 2026 05:56:45 GMT  
		Size: 5.2 MB (5231142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9bcd445fb6287d05daadabda6f45262e001e9a62697da15fd64a725b4d45720`  
		Last Modified: Thu, 02 Jul 2026 05:56:45 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e6cf5d3a8a266d0b837258b1c55113128b2b9db9437010aa4b1129faa5d4edc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.9 MB (199892033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3be64147b703d13b219f455db666e2ad75ee8a6b8eb8a1f25f6082522aa0d07c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:38:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:38:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:38:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:38:00 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:38:00 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:45:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:45:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:45:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:45:43 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:45:43 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dded89c0fbadae3e88ca11a21c39a0eaa230a16a309c2574c9b3e2a41fb03373`  
		Last Modified: Thu, 02 Jul 2026 07:41:52 GMT  
		Size: 91.9 MB (91914031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc474c5334d442148c9f8c8d53a9f9cd9f389ce252347efec7080e1d61e020d`  
		Last Modified: Thu, 02 Jul 2026 07:46:29 GMT  
		Size: 74.4 MB (74370570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3507e1d9b4ecb000db64f79327d0b73caa7805bb8b93fb5323f9881910fef734`  
		Last Modified: Thu, 02 Jul 2026 07:46:26 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46506dab51c94b238d04cb1569a442c754b942112c52185bf1441d2b153dde1b`  
		Last Modified: Thu, 02 Jul 2026 07:46:26 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7b6b24bb7c22d46677bdab7636b69841dc60e2ad50a3e10e6382571e23d2e9d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b106e26f25b54bfbd4b3e6c3f690e1c72590884919694283af0883f54a1cf390`

```dockerfile
```

-	Layers:
	-	`sha256:7d1f45357aed41571956dc27813eb6b5060b15a9cca487dc5305bca223aead11`  
		Last Modified: Thu, 02 Jul 2026 07:46:27 GMT  
		Size: 5.2 MB (5213055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dedcbb80c7082b5a27d126444bf61d30d0710020dadfca6485aca9e25e2a16d`  
		Last Modified: Thu, 02 Jul 2026 07:46:26 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:4df4bf6a56ca1b1c5527c2d87153d4595316840ffb86b0ab31b3621112e88044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.2 MB (188205638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f615ad07052515deae627b9a0567939ba891b30f3e28125e03ef8bd967999855`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:58:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:58:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:58:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:58:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:58:57 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:59:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:59:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:59:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 05:59:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 05:59:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59612c470f1574d0bcb80bb87af1d2f3abd0d28ef1aabf5d009b4d13aab8ddd`  
		Last Modified: Thu, 02 Jul 2026 05:59:39 GMT  
		Size: 88.4 MB (88420382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcfe059a29a5987b0598b53e2bd83db719b1935ce0a5899a21a4d348be258506`  
		Last Modified: Thu, 02 Jul 2026 05:59:39 GMT  
		Size: 69.9 MB (69932833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb481a829d827ab0cd0c6310bf25a39c76403362b10701b894bcea9704cd94b`  
		Last Modified: Thu, 02 Jul 2026 05:59:37 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df884ed9ed5e303c62e8459ea5f69d595601ef45e4e1620c9c44970613b0296`  
		Last Modified: Thu, 02 Jul 2026 05:59:37 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b21a19a87b26082ced038977a65a0cb330b9092e74c2559af5590f533320708b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5222493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4049be7277cddd8ffd0c8b9a5faf6abc677024d5e57035c54e77b9aabf4e46a`

```dockerfile
```

-	Layers:
	-	`sha256:6c70da596f965d69ca0264efe9ee4f06f6474e20c87cc31525cccd6ffb64626a`  
		Last Modified: Thu, 02 Jul 2026 05:59:37 GMT  
		Size: 5.2 MB (5205846 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eee3c8e2ac0dca8c434ce6e7f7a387e30aba8d94904b9125b02c5f1a24df036b`  
		Last Modified: Thu, 02 Jul 2026 05:59:37 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json
