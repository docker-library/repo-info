## `clojure:tools-deps-1.12.5.1664-bullseye-slim`

```console
$ docker pull clojure@sha256:14dfbafe4e980471a28dffcdc736727512abf0d57d2a7cd4c60ed7f613422bb9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-1.12.5.1664-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1e7ce5be69d05e0cf88c8ff0e6b3dc4d562b46b7fbc285581a03cbfa835589e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (178990562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc0cef5c9f1844035871621a001bd03dcf2ebc1cd6feaef03fbfdcc49f4d21c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:21:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:21:20 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844f40895b7b98b1ae7a60df320bec3c41b8ad0e01b953420f5c3d01283a03db`  
		Last Modified: Fri, 21 Aug 2026 19:21:56 GMT  
		Size: 92.6 MB (92615079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d62cac418b3756d94b53bb22f77a858cb3c05a8f2e667ce3b903ba2398e4c5`  
		Last Modified: Fri, 21 Aug 2026 19:21:55 GMT  
		Size: 56.1 MB (56114823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775dd5adcfd34a006a6c02669208b6ecc13cf5b3c10d65c81c3810554db2ff08`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39101d1154723cbf37b6615068813aa1bd28dab78a8b5484c4817fe1c7168268`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:264df37bccb9c6f5aa1c9f3209a4e5b70d76ca5a5b488942cf8f8d7a3ea44281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5307821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079bfa1052034d5af9d01a0f1a5926800726055029095cf4d53206c52ede86a8`

```dockerfile
```

-	Layers:
	-	`sha256:f2ca429b04bc3eec1d7551a66423f03652a486888edefb6c871f7da7fdce2681`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 5.3 MB (5291142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79aee224518fd202c4d3424913c7b227532902638d0079b57ec88d56e8942a94`  
		Last Modified: Fri, 21 Aug 2026 19:21:53 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1664-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2e0b86ce4e6bae0d984c660768c744cf3617f449d4e167741f40706d4ef87b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176563469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3bd5b5faa512f2d5f3626af560068ba8bb9d3152dcf01737041746642337ce6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:09:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:09:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:09:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:09:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:09:20 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:09:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:09:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:09:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:09:34 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:09:34 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c2165e37a106b9a22b71dbf0bdda4b9f0c0a63096036ebd9ea5ff27946e546`  
		Last Modified: Fri, 21 Aug 2026 19:09:57 GMT  
		Size: 91.5 MB (91532202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5317c62aa52061da6f42126da8885ee87c42467d8343ef689f6879f3644720`  
		Last Modified: Fri, 21 Aug 2026 19:09:56 GMT  
		Size: 56.3 MB (56281319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493d496c77bece662ba3715a24ca570b31fe0d0fe7cbea986afb200f56e257c0`  
		Last Modified: Fri, 21 Aug 2026 19:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5231af603589dc640b5de8a60b3da77438f26dacf23baed8bb1835b2409e6b62`  
		Last Modified: Fri, 21 Aug 2026 19:09:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1664-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a13666e56f4b4dba4d02fddb4fdbe61e93b15418ede9cd4776425b86e5479c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5313715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c498557d16723ad8fd35a359e29d6b7eae617e8ecf1116f4623ef4c4fe9391d8`

```dockerfile
```

-	Layers:
	-	`sha256:dfaac68492e7292f4cab3f2a29bed8659cafb8558a217f3f7d2815b260c97453`  
		Last Modified: Fri, 21 Aug 2026 19:09:54 GMT  
		Size: 5.3 MB (5296895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2cb20429131bb85ed1811ea70662dcf478b31315a8940147c0706ab5405ee99e`  
		Last Modified: Fri, 21 Aug 2026 19:09:53 GMT  
		Size: 16.8 KB (16820 bytes)  
		MIME: application/vnd.in-toto+json
