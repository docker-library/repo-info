## `clojure:tools-deps-1.12.6.1673`

```console
$ docker pull clojure@sha256:cd2abedbc05443afc72f4377c739b0c352016d99a88f9b5caac8450eb7a5b459
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673` - linux; amd64

```console
$ docker pull clojure@sha256:a9b4eea4278217f5e797fc917f059297c91fc70e452752bc0c254f4321cd4bdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221423945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8f689db97f1f335a2e058b2eb49d412edf475ef30561a3d9fda45422066a04`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:13:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:41 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:41 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:59 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e603dee6a23daecf70e3cb1b9b6463322895a94f6fc18cf564e50476a826665d`  
		Last Modified: Tue, 06 Oct 2026 02:14:21 GMT  
		Size: 92.6 MB (92618074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8324010fa754d099acabe67d5620d2ddd0269484a07c3dd77bf40cde9afd1c03`  
		Last Modified: Tue, 06 Oct 2026 02:14:21 GMT  
		Size: 80.3 MB (80286810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a23661a5f447600c28caf0e11dd0ea27f0ad5335c18f962c1b075573acc902`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d5964047833570322d232d4e35e7017a507f310578366a909da5bef98711e8`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:f83a4ba063c76266548fa632eddd177076e689ab0b79b8d00bc2ef09f89f509c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad28ef6d8ca338d3e5fee7cdf9d0d12b999ae60f511a845be97fed67eebd40ab`

```dockerfile
```

-	Layers:
	-	`sha256:bb2f21d194f717ca11b6b6ce4f3a345a55a8b76a61673f9b08ef0f81aeb26e1e`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 7.4 MB (7350036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad5b93ffac1b7dc0f4cba486cc76aef31904a801d316cb4ff7cb821d2afd308`  
		Last Modified: Tue, 06 Oct 2026 02:14:18 GMT  
		Size: 17.9 KB (17924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:64891dc9009296736b8b8bddd80f3ca03643177b006c84869428824317d442e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220161937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4247afac6cd608601cd9edb7b24a6c7ed6c937c0e145549832c1499ea8d23d6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:19:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:32 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32076db5b17e990ab11b92a796d26a498e6b4ceed20b100d8f987020613cfd56`  
		Last Modified: Tue, 06 Oct 2026 02:20:11 GMT  
		Size: 91.5 MB (91528844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3f44ee7b8e2986b14010e4293c0d96d6e2727ca48f1f0be87806fba6ca6ec7`  
		Last Modified: Tue, 06 Oct 2026 02:20:10 GMT  
		Size: 80.2 MB (80230494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d527195e43872d13a7e78ca64d097acd2a8a0dcee4440fe0e3f08297fde216ee`  
		Last Modified: Tue, 06 Oct 2026 02:20:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f42a8e35ded70ac4fef2e0ae89abacf2680c7d548995071aa96f0b40c3b093f`  
		Last Modified: Tue, 06 Oct 2026 02:20:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:b72f9c8102ff33df364ce0dffb310b01f8c339fc17073130c04be809d0e825b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43414f688644f0f83b75d249d97fdeeacc226f267471c20cd1724a93bbddc3a1`

```dockerfile
```

-	Layers:
	-	`sha256:c9a7c57dbf814492a9fc16dd7fd89f232dde0d8e372163be380a0ed92fe2a818`  
		Last Modified: Tue, 06 Oct 2026 02:20:07 GMT  
		Size: 7.4 MB (7355868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b28d8d93b4e6e0dbd25dbd517e591adf687dea2258736d340cb6acb3600efa4c`  
		Last Modified: Tue, 06 Oct 2026 02:20:07 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673` - linux; ppc64le

```console
$ docker pull clojure@sha256:2e12aa7ba225555bc27f518c8b39774eb59be8d8a0e49218ef31e1d296098bfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227599144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b95d5c6db6df0822b997ac469e976347abb8c0fa46634cb81ec3d8466fb991`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:39:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:39:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:39:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:39:05 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:39:06 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:32:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:32:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:32:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:32:19 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:32:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da04e914040a479971a3ed1caeca790017eb916416f5fcef351c9f764d805fc2`  
		Last Modified: Sat, 26 Sep 2026 03:43:15 GMT  
		Size: 91.3 MB (91256264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9781f7ecf9c5debe018ef4de0062cc427f154200b852b27e03473418d4782272`  
		Last Modified: Sat, 26 Sep 2026 05:32:57 GMT  
		Size: 84.0 MB (83992534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48346f5bc238c2b9d574be23e7eb21cbd80f7203a51d773f35c393ac8a18af5d`  
		Last Modified: Sat, 26 Sep 2026 05:32:55 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0d13fc462bdcf82f4137640d05b6f8d90c73aa987139de00d19809de131795`  
		Last Modified: Sat, 26 Sep 2026 05:32:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673` - unknown; unknown

```console
$ docker pull clojure@sha256:2023c46f689fbb8901ec5922091d51c6d18196a9f7b8bd1c65788c915779add3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7356607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0a8668b27ae0c6d40dc59bc93a01ccb09349aab9311cc4a84056b1a4dc85d9`

```dockerfile
```

-	Layers:
	-	`sha256:a1791f24319f96602a281dccebdd87e7b03b480047febb1b7cfb8dc4b7eef5c7`  
		Last Modified: Fri, 02 Oct 2026 08:26:15 GMT  
		Size: 7.3 MB (7338598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae24a052a3e39b93537c59fceb60a3eebc5ad9410c6cbb45e1b00a2212817637`  
		Last Modified: Fri, 02 Oct 2026 08:26:15 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
