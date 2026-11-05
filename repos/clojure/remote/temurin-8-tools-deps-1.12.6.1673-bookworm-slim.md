## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:aee41625a067b1b0b57a45b1ced0ac0f897b0b0900fd401c0a15650b7ad24078
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5bced8629b54a962fdab39b05fced14f19cdfbe6c9a91891c36c238e99b350f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149948998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4657ede43223eb0496670f9faf6f3c9b29b464f4731f23a0316a4ca945b2e8`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:06:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:06:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:06:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:06:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:06:09 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:06:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:06:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:06:23 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f0eb591ff9c92abd93cbdb28d5eb5c3e41ca1717fac7f27e60d801ed056dec`  
		Last Modified: Thu, 05 Nov 2026 08:06:39 GMT  
		Size: 55.2 MB (55192249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb62ff048830f52f5972c054a8928edde674dbade0123a5dbf6ce9920bdb46e`  
		Last Modified: Thu, 05 Nov 2026 08:06:40 GMT  
		Size: 66.5 MB (66508121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e908060aed5c3fd17ba8fe23f8d82e6667985b2806b1dfbd7d7994872009f19`  
		Last Modified: Thu, 05 Nov 2026 08:06:37 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1dd6b5136562df8dc7c6a8e83da010aa7ab5c09f78329eaad62ed7f098cc3228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebde6767fefb0b403cd252faba9e444d8b93d2a63eb077844083a492de2aa998`

```dockerfile
```

-	Layers:
	-	`sha256:ed143932ff0bb5481d5c5b5184711a58917dd2ce9e0dc4c634a2f1799b8c2cd2`  
		Last Modified: Thu, 05 Nov 2026 08:06:37 GMT  
		Size: 5.2 MB (5238467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:825182292ff1f2ee348e9792cf64b7c69ec68275d74a0f04c31c684b734c7010`  
		Last Modified: Thu, 05 Nov 2026 08:06:37 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:98af7ab166c4ccb23650a05625f15283d573e7f04bf2e2f803d1d0ecbf950d26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148899705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6e2e29563b6bf9dff2de814ecf6bd9278fb730f11a58f8a9b920d64b57eab9`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:15:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:15:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:15:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:15:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:15:38 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:15:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:15:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:15:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79730a8dc731040c8f3eaca7ec5bbafb0a68bfff8984b3b4f1d89f9cda13865f`  
		Last Modified: Thu, 05 Nov 2026 08:16:12 GMT  
		Size: 54.3 MB (54254269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672fe5c29b66ba67b918b4fd847f889a73324e1e34ae78dfeceb2f7299e367a1`  
		Last Modified: Thu, 05 Nov 2026 08:16:12 GMT  
		Size: 66.5 MB (66500433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad5a58bb44a89e1d5d36662580059b71274e2bc85f8bda1a968c9e3bfac809e1`  
		Last Modified: Thu, 05 Nov 2026 08:16:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:45030be1e1f208d10e4d83c97e0f423ad8dbb6e45fc3adf6691e95857caf0a07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5bb3a4c38920b2ce7d93dd9f190d36366d63a8d83b40985a7ebb058544a10a3`

```dockerfile
```

-	Layers:
	-	`sha256:e43be517f42ecacd90f24d0a835879933a58c76afb0ee4b8739fe8b01fd3e13d`  
		Last Modified: Thu, 05 Nov 2026 08:16:10 GMT  
		Size: 5.2 MB (5244928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8d2dd3b85312287e786ac7a990df7175585c6a0908c0aa8f9328873fea9770d`  
		Last Modified: Thu, 05 Nov 2026 08:16:10 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:c5f1507baec8d01ef25521cf27aafb1b500a4fd77e8716f2735a46d62789e293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.1 MB (157095016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3f0a27b3700fec2b4eba8153c9714f1fa0f8b69a2ab371de72b005ee58c799`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:20:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:20:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:20:38 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:21:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:21:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:21:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84c55ca3c796d8f199e291e797ee02c01ef032404d03234223763b0da1f182b0`  
		Last Modified: Thu, 05 Nov 2026 15:21:51 GMT  
		Size: 52.7 MB (52667093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a319a0871c8afbab18603408d25aff65f11af1d42a5965f5ed2411202b31cc6`  
		Last Modified: Thu, 05 Nov 2026 15:21:52 GMT  
		Size: 72.3 MB (72333720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8230a4d5c84fe0fd45581e18f4d9fbeca0fedee62edf0f884a7378b793edd385`  
		Last Modified: Thu, 05 Nov 2026 15:21:49 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:947a898f16947d4ca1e8f48fc2b626fb8eabd97edc12e7b192ec76794a1efc71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5258670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec2cbc1cbb53129c26d93375310331f43ca3202290419b95a552e90c1e42bdd`

```dockerfile
```

-	Layers:
	-	`sha256:9bb12b36e373400412ff11977de05da8961a6a90f1a743d600ee538957d4ebab`  
		Last Modified: Thu, 05 Nov 2026 15:21:49 GMT  
		Size: 5.2 MB (5244220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a45fcd354c87e5e856ef37961f43a3ba07d13e6c98ae8ce4f74171e99197d1c`  
		Last Modified: Thu, 05 Nov 2026 15:21:49 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
