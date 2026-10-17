## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:5ae0dc78c3590e4b3aaba8105f370d026b70bc025850b2d2e8cb8004689855f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c92f1fa95e0ad6d01c30cb52120e41e8f0dcf67e0687284c64a707685a3ace73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274632299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a29b901f6a789aff438d625b39244e8a10738fd4270fdcbb619c60105d9a6fb8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:48:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:48:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:48:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:48:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:48:52 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:49:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:49:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:09 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da0faa31a3eedcd365c52c699c1a4845e4d7eedda365ecdddc734858fc3e8d5`  
		Last Modified: Sat, 17 Oct 2026 01:49:32 GMT  
		Size: 145.8 MB (145825487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5460c9782116c43395516bf8cecd2c48afbb40bbd3c60ff86804989f8031b1`  
		Last Modified: Sat, 17 Oct 2026 01:49:30 GMT  
		Size: 80.3 MB (80287747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660710e9ebce6f661599b113c31fd74bf8eb16f7901d0c6d088cb87dd9b47788`  
		Last Modified: Sat, 17 Oct 2026 01:49:27 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e1fd8260bcaa76de597f566188893dc165c75fe38b47053c96a14c755c367f`  
		Last Modified: Sat, 17 Oct 2026 01:49:27 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e9fc80d01dc708af124b9f00e8493422b41f4486a796c2c74a1c4c91e8836956
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7396572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:312d1c123946ebc26c30804322ff8dbca7524bc40b165d0709d01818835aebe6`

```dockerfile
```

-	Layers:
	-	`sha256:0b1e36a145f1ce2985f4a4e0137314dffd612bfed1e31db22bdec2c0bb541dea`  
		Last Modified: Sat, 17 Oct 2026 01:49:28 GMT  
		Size: 7.4 MB (7380640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab374141cb2e461547438ae23b6d6706043b619e917f0537526db39fb5ec3b24`  
		Last Modified: Sat, 17 Oct 2026 01:49:27 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:79aa961786019cfabcd81d666a0dbbf31397023ca58c909ac94b80506613dc8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273293375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01be3eeb1a45f73643ac2905e4aa3b21768812c4c25ebfe8085b9805797e64dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:49:08 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:49:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:49:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:49:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:49:25 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:49:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:127b52573f3bbdec348fda6705b2659068bd6b2494d60b8d6200809116669f2d`  
		Last Modified: Sat, 17 Oct 2026 01:49:51 GMT  
		Size: 144.6 MB (144648240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ce7fbbb19a3244a42971aa1f80c0e102e629ad0470ba41d5c32306726b4f6b`  
		Last Modified: Sat, 17 Oct 2026 01:49:49 GMT  
		Size: 80.2 MB (80242542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634ef2b1a3be00769004a4b9d27e2d0ec7ed806ffdb52902f9adbe83640e2f8a`  
		Last Modified: Sat, 17 Oct 2026 01:49:45 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d751ff826f730e424c99946be8fd55c3da3e6f9b711fadb23a814a2e41dba6e`  
		Last Modified: Sat, 17 Oct 2026 01:49:45 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d80675a4d52d78db8f7fd4924e9ba24c7b0155d59d155139ac9db333bd198fe4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7402453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cd2f12da06d59067141e79e5b69a0ebd11660d48a9a4b9c7acf5ec1a1de9e1`

```dockerfile
```

-	Layers:
	-	`sha256:a948bcf3d26f5427a51db6be5a19b4b80bac61f909c90eb5a0a4decbb70a2617`  
		Last Modified: Sat, 17 Oct 2026 01:49:45 GMT  
		Size: 7.4 MB (7386403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df9c16429a6123ba544bd031d8c793b544afeaec1259304c2077a2acebe09999`  
		Last Modified: Sat, 17 Oct 2026 01:49:45 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:8a1873500c38307ceb017fce9fb9a6620c83c12715feeb797b4fa8e58fae352e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284297220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3659396f98473388cff0efd10631a717608c7a9a9b7fd48881798d0f0b836a78`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:00:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:00:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:00:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:00:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:00:09 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:13:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:13:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:13:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:13:42 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:13:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcf49d634e7971cf1f4ecb80149eb98c0eedff67ccd7e9ac4f6be8c0f51e883a`  
		Last Modified: Tue, 06 Oct 2026 10:04:59 GMT  
		Size: 145.7 MB (145671527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c586cbd6951a0e12e7625a59b4bc15251210cc151686de80c6e1f371ba678a72`  
		Last Modified: Tue, 06 Oct 2026 10:14:36 GMT  
		Size: 86.3 MB (86261915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:191998efc16869e84bd881c35b7200e46ad64feba3a8f34c0be1fa5b78c8b174`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25dd91f9ccfaea731fdf473f5422a9b8ef34d7e6782c94708dbe43bff567e802`  
		Last Modified: Tue, 06 Oct 2026 10:14:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4634403cb90224ac7d5750a2593ab2c0ba3183cde1835b41f4abe7823260dab8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b3786c3007a8d5d5fc156197c2c95e6f12333f3211ad52fbf4d93ee5d93397a`

```dockerfile
```

-	Layers:
	-	`sha256:8c14abe7b69a66c69bffe18f8edc09186b2ce93da2b5b4ea393030b6c8065034`  
		Last Modified: Tue, 06 Oct 2026 10:14:34 GMT  
		Size: 7.4 MB (7385854 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f41de95656c36920e55304590ab449cca1ced903a86cff90e226cb8059d442c`  
		Last Modified: Tue, 06 Oct 2026 10:14:33 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
