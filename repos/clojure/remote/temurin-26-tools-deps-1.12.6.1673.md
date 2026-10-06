## `clojure:temurin-26-tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:016261ef8db7a527963f8b1400e2fc820bacbbe724e9a60b13d6524d969de266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:2d52f9ce21b31d1b82098bc37b0866d3ee90993b156fca2604a4de7fc3ac326d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.4 MB (223369483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc15c0e0b23f59e0e58156b58990a1a7ac956653644e7774dc2a76c74fb5218`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:14:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:14:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:14:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:14:17 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:14:17 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:14:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:14:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:14:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:14:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:14:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d826af6b263fae0ed22f282d31ee7420f4a1e42460cfcb3ad7de34391e1b24c6`  
		Last Modified: Tue, 06 Oct 2026 02:14:56 GMT  
		Size: 94.6 MB (94563498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012e2eb592867635c1bb7a3debd422b8bf1898c6fe69b551e47677465819c31c`  
		Last Modified: Tue, 06 Oct 2026 02:14:56 GMT  
		Size: 80.3 MB (80286923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d215d6c317cb6245c4cb261bb1b944e4863fd3948793eafbc9e715cd0a4b874b`  
		Last Modified: Tue, 06 Oct 2026 02:14:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd0903cadaefc3c57ce28ce3139556ecaa774d10e324ce25ba1be89181d1c9e`  
		Last Modified: Tue, 06 Oct 2026 02:14:53 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:c44e29125f225fe5a949e765a1d3d82ab2b2ac6f751992c53cdf4cb59b9f7441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fce79f7a0c8188ad88df7d8220e3102ed5120f0efdc582bbb74b78f7004eac3`

```dockerfile
```

-	Layers:
	-	`sha256:7208c478b9ab38910ff52d0bb2412aa61c28a6a380f722f1c5a9bed4e97b651e`  
		Last Modified: Tue, 06 Oct 2026 02:14:54 GMT  
		Size: 7.3 MB (7346217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6617e1e56d2a7d54dacd9da7517d080d7836e2aeec281c59977a29e2bf715375`  
		Last Modified: Tue, 06 Oct 2026 02:14:53 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cc246c63ab484bf3111f082c247e1d73b3bb0f6c9b5a3fcc77bacf824bda840c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.2 MB (222176668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:391ce598fc03aca7666e3ce2d21bccf09e5b462afb6b8265bf12c3de68dd6f33`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:20:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:20:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:20:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:20:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:20:10 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:20:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:20:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:20:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:20:28 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:20:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503409e10eb8d55612353877c27a0d5fefa004155ca9926a4cca4a1af6f0c7b`  
		Last Modified: Tue, 06 Oct 2026 02:20:49 GMT  
		Size: 93.5 MB (93543627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026176c71986e934ddf5717ce6ad33a87d4692edc89d27b092c2062ccbe0cbea`  
		Last Modified: Tue, 06 Oct 2026 02:20:51 GMT  
		Size: 80.2 MB (80230445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f679189197c3e4fa6bbcd04792fce5d40518852cfef14f86d2b6ec0b1a5a1e70`  
		Last Modified: Tue, 06 Oct 2026 02:20:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d3663da4aee190fede71a4c0241d0e91b28cd4301caf05c87e7ca4813182f2a`  
		Last Modified: Tue, 06 Oct 2026 02:20:47 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:12ca45e0bd93d004ff2fde076ff251c79ecbe3a82fc9bae56c763980daaac3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1ab11a07bdd28bbdb672426f9818c40abe30c9b29ef2b580cfde4279bd6757`

```dockerfile
```

-	Layers:
	-	`sha256:cdafe59e1dcbf6716b3aa95a1454e991acff89da36ed8cd7795d96bb825a8834`  
		Last Modified: Tue, 06 Oct 2026 02:20:47 GMT  
		Size: 7.4 MB (7352001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:211913b4a16ffa432e304342a20a7d4fc259733de8f3f813f3012632367e3a23`  
		Last Modified: Tue, 06 Oct 2026 02:20:47 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:5b29496c9bef8e8120a9d98048600c7faa87bea58ba651d8ffb639919b65cfd4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229694189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e32d109feb916b2b778d204f8fb12cb9f029c6803316a863e76728cd7823c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:39:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:39:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:39:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:39:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:39:10 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:53:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:53:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:53:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:53:45 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:53:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe1c80a24e121d2ac2567e4fd9e76e2c1d95008d253d91f02a5a94e71c053cb`  
		Last Modified: Sat, 26 Sep 2026 05:42:13 GMT  
		Size: 93.4 MB (93350875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5df3f92290c093ae091a23ef65d811cf232c3fae672689902cf694a104e5d0`  
		Last Modified: Sat, 26 Sep 2026 05:54:23 GMT  
		Size: 84.0 MB (83992969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbaef1eff1b2b94006612787d4147bdda089b446093987d96f4a8d90557ae31f`  
		Last Modified: Sat, 26 Sep 2026 05:54:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180b2cfbcc6d230358e912f123f68dc31efc0f665ce8f5c0a1b409e32f6d48c1`  
		Last Modified: Sat, 26 Sep 2026 05:54:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:db8eb98cbbf9b56d4b2f57cd45d3960f849dce2a293fbfaf7921832e45e286bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a1890cfc6f3196ed102e4a089d7fb89c194bc5f0d6ad7a73272ee5724e1053`

```dockerfile
```

-	Layers:
	-	`sha256:eafad09448100cbc7f1a7e1c3dab8a9a7fe671b1b25e57109867514982915ad5`  
		Last Modified: Fri, 02 Oct 2026 08:31:34 GMT  
		Size: 7.3 MB (7335379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd546203d49998457cf4db3b8b2efb32d14746766bdad0413661b0ed93d0780b`  
		Last Modified: Fri, 02 Oct 2026 08:31:34 GMT  
		Size: 16.7 KB (16668 bytes)  
		MIME: application/vnd.in-toto+json
