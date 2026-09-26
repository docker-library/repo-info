## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:119725b6c25abab48e7b4065924470b4775c44efc09b8c40ec3b9194a4ff3de0
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
$ docker pull clojure@sha256:c01a90d9c95ebd070d532e58f9f5caf0dfab0ce0199dcbde80b33b9b83b0391a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240751867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db964b3aa83d99e37d06e7fdc2ad3d7e4d74c72cf8ec7b470f4afef0898e33b4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:21:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:21:32 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:21:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:21:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:21:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:21:45 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:21:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c662df4033728aa9032dd4ec346e3739e1419802a4177711d91626b26516949f`  
		Last Modified: Fri, 25 Sep 2026 23:22:06 GMT  
		Size: 145.8 MB (145824870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7220ebfe85767f4a96e32b38c444d97c8349d3c2bbb186498fced3822f7ac7`  
		Last Modified: Fri, 25 Sep 2026 23:22:05 GMT  
		Size: 66.7 MB (66687509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d400cd03cf2ce981a083436d28727ad0e780de8fdd48a3fa6154480efce28`  
		Last Modified: Fri, 25 Sep 2026 23:22:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365050e7ddc4776ba6c339da6bc5862a9f5fb6c43cf8e8da8252b825f79a6d79`  
		Last Modified: Fri, 25 Sep 2026 23:22:02 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5d2ab85fa4e5fd77c43048e865d055205aefb6c7f0f033725e3c809ae943ef13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5135297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9422938dd1be90c03c947c78928465fb860f17cd7aabe5ebfa6c59f1d4802e3d`

```dockerfile
```

-	Layers:
	-	`sha256:e3ada1d3976667e69abf8f39f0e6830035f51b5642285b1c53f1e4abd2bdaf17`  
		Last Modified: Fri, 25 Sep 2026 23:22:02 GMT  
		Size: 5.1 MB (5119308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0888493b2037bf30c65ea9392565b05df981f195f279bb8d98b02b6161932f02`  
		Last Modified: Fri, 25 Sep 2026 23:22:02 GMT  
		Size: 16.0 KB (15989 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c640ba4c2a08d2d2547122c8298d95866027f3b4f16109c1ab3fe5bc9e976206
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.5 MB (239454538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48beb9f6c7d407856652fd92b5b59e3f66f992f5b53eb6740c8ce6b0eca7481`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:58 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:19:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:19:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:19:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:19:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:19:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d7bfdee4b25a6c194a0b3208be936a95868aefc49dc850c79c10519d06eaf1`  
		Last Modified: Fri, 25 Sep 2026 23:19:35 GMT  
		Size: 144.6 MB (144648208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70d8f7105f308d0e54e829131ac81e971aabd21dda6ba4fe645e9594c5fc1e9`  
		Last Modified: Fri, 25 Sep 2026 23:19:33 GMT  
		Size: 66.7 MB (66681610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b4a55dc8f0bc35a70709ae37e136fdf1ed87c10e752f0b27173a0a2115ba22`  
		Last Modified: Fri, 25 Sep 2026 23:19:31 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4657bf8bc060b8965276a2d0af36f8dab6a8cdf9250d0095885ee987a7786b60`  
		Last Modified: Fri, 25 Sep 2026 23:19:31 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0f6b1a6c22052c2b6ea877e2598a23ad85579718e517ee6475835bd359d233b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5141176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3939dade8c24230e329c824a319d60689ad2647bc6b057d96fa1e66386446c`

```dockerfile
```

-	Layers:
	-	`sha256:b751b8d3851cc2a9797f96f24ce60628915368f8a1a24626a93a35086c87c9a7`  
		Last Modified: Fri, 25 Sep 2026 23:19:31 GMT  
		Size: 5.1 MB (5125069 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fe40f34b84ce3f002c424b6ecd99af3d4f8f18cc46d465b06ef42ad4956e51f`  
		Last Modified: Fri, 25 Sep 2026 23:19:31 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5baa90c7ae85c1a9699b610b9136e90f1e54f328cd4ee7a6cd80013b187722e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250257761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a480ea2459bb11d217ec5ff058d73e3a7c316c3d27c14f4571bfa0c87c0422d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:51:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:51:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:51:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:51:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:51:52 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:00:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:00:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:00:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:00:22 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:00:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c1e2072971df062c998cfee78bae6a9efeaf4c5741e49f7cf9b2bdb7610ee9`  
		Last Modified: Sat, 19 Sep 2026 07:54:48 GMT  
		Size: 145.7 MB (145674296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cc5334d2cffe6d9485a7d551ba151f453f394fd2ca10bf5de28edd484915ab`  
		Last Modified: Sat, 19 Sep 2026 08:01:00 GMT  
		Size: 72.5 MB (72498860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487ae8bc4d166d39ec5784e598e19152933fa08f3f13585e654a1e7be989289e`  
		Last Modified: Sat, 19 Sep 2026 08:00:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef254faf5c517eb748342a3045001e15736bd297069d6f97ba3927ecab58e0fc`  
		Last Modified: Sat, 19 Sep 2026 08:00:58 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:964d737d02b82bd6fa1b7a8a1efa1952ef1354465b0986c41743fe44751dfd08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1421c2dc40a190b14754fc8daf69879439b39f4a842dff69f0d5bb14d75a8a76`

```dockerfile
```

-	Layers:
	-	`sha256:71dd384a3391e95989847aa36ac88b3f12fded9d3b94fc98f259f001d1bdc34e`  
		Last Modified: Sat, 19 Sep 2026 08:00:58 GMT  
		Size: 5.1 MB (5124458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7d7b152f91f8bb3cfa639be25cb97bb34080b282252f93fcb5f6b55ecbaeb1e`  
		Last Modified: Sat, 19 Sep 2026 08:00:57 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
