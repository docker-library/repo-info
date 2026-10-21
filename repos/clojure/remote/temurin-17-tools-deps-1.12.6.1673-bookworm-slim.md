## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:9d5ef7109a796dbbdbe281a73e386be2edf534bdfc79a17ae12e6d34f63ac96a
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
$ docker pull clojure@sha256:c3a6f0bf5dbc7f4d2d0df27df2d6e5d311ac7d1adad41acb57067df7f373b588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240568657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e8433bb97ea3851d00227d2c9fd8c18427f9abb13a69b5a42cf6b94ee19cbd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:17:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:17:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:18:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:18:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:18:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:18:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:18:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78990a39232293576bdb3104bf3e30b2feedf6c94ccae2584f8feaf69d4ed47`  
		Last Modified: Wed, 21 Oct 2026 01:18:34 GMT  
		Size: 145.8 MB (145825488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11bf9e7df28a4147ca34a3cd80e09f86785af4bd3791a263987ab1e19df6d209`  
		Last Modified: Wed, 21 Oct 2026 01:18:32 GMT  
		Size: 66.5 MB (66494190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db68ae109dad76cb0c17544af47fbba1f21191bd830bac30fef27d1a7e2ef433`  
		Last Modified: Wed, 21 Oct 2026 01:18:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7429e4879a5061e9eb3caa3fc5d78baa54f40374afa20e20c1a1cede57918eb`  
		Last Modified: Wed, 21 Oct 2026 01:18:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:64f10f0fdf020c46c124885366c4e56245561bfeef7a0bdd6283946e072dc2ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c02acd9485b04425b5944c34d330d26fa0a914a81c396619498f60f4d4af02e6`

```dockerfile
```

-	Layers:
	-	`sha256:d62eb2b8feef80045e8c28f58a29fe9bc0a44407665325e888b7972ea066fc94`  
		Last Modified: Wed, 21 Oct 2026 01:18:29 GMT  
		Size: 5.1 MB (5118013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28fcad31f970801ebd3bc78a3eafc9350355bc893e66527fd3ef1a17c58dd553`  
		Last Modified: Wed, 21 Oct 2026 01:18:29 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:715c0642a49ad514d71d20c303b6563306866e6f9c68f96dde5714766281252f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239282062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d695fb5f9c5b7e2ece57ae4de31360ecaafcead54ba7f6fd03c0ec02ef062dc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:24:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:24:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:24:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:24:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:24:15 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:24:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:24:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:24:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:24:28 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:24:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e848b8961a44b69e8c42cf8c2d358a45013c5630051373d4850658fc84d2c75`  
		Last Modified: Wed, 21 Oct 2026 01:24:51 GMT  
		Size: 144.6 MB (144648236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d750b461d8144f105e0b36deddd9cd6f63942ff8acbfb09553d99cf1ba18c3c3`  
		Last Modified: Wed, 21 Oct 2026 01:24:50 GMT  
		Size: 66.5 MB (66494358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ae11e65a0e3e814bfd7dfd4ac77413445ec34dba4f294be43aa5aa9b592307`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facaa394129c4c7f9805c56b81f1c04186b0962e799757395083a59f8ce9a514`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1691bd3a8d0bda14a80d1702a64a2742205a50b364780f368ebac71ead11e05f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464a5b3d78f3562bce627dbb12f59f31ac782ec76e4a35b5e39a47c2101727ec`

```dockerfile
```

-	Layers:
	-	`sha256:6f95d04fea746c00b815fd4373a682218174e35773a4a9a96181bc0754f4dfb1`  
		Last Modified: Wed, 21 Oct 2026 01:24:47 GMT  
		Size: 5.1 MB (5123774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fafc8f60f3c2b6a83b991228a2eb2b748e6098f629f94cea8c99ed8af17e983`  
		Last Modified: Wed, 21 Oct 2026 01:24:46 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:02a2e07f752b78111c8d80ee45e81827f1f0194eb8c50016c3f306f409979011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.6 MB (252550772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b76d78fd7e44bf5e0ddbee23c745a746379ec0955a69807ad617e199592cf538`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:35:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:35:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:35:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:35:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:35:35 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:49:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:49:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:49:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 05:49:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 05:49:18 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caee9e6ea3d957247c276d0a2bcfcb03fb1b199901d9e953711b51829ff4e433`  
		Last Modified: Sat, 17 Oct 2026 05:39:14 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf25cfe7c515d75db95d6f74dc28730ce28f74f882b6a7fe13a786b13126a68`  
		Last Modified: Sat, 17 Oct 2026 05:50:13 GMT  
		Size: 74.8 MB (74785762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0444cbe6169ce148f89611fdec1759fb212506c56efef5cd3568c74518e3af9b`  
		Last Modified: Sat, 17 Oct 2026 05:50:11 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881181c60073f5e0a4c0c869e2ad52048e82e41616a80a6b84e5e4ecde4b2059`  
		Last Modified: Sat, 17 Oct 2026 05:50:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a3a6c3ddb4565cb85504a4482c83ec0c68a5f0cdcc17ed56432a18c40602269b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5140504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f26ab5d26ec8514a865fbb5bf7b4d84a7719bb57dc4b2ffa9607785c318a1273`

```dockerfile
```

-	Layers:
	-	`sha256:2981d3ca450508c9b4a03c06fb76561f2637966672d23922097285a2a53b5d1c`  
		Last Modified: Sat, 17 Oct 2026 05:50:11 GMT  
		Size: 5.1 MB (5124466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:106512b550fc5903a2b0b7be7610d16c17d6857f50bfc12107394bd12db52bc2`  
		Last Modified: Sat, 17 Oct 2026 05:50:11 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
