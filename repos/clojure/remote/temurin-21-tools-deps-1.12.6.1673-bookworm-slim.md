## `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:aca794e475848e4c0852f6a9a905add8a32d5de45b8c97c7c41eefc03bc735a7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d3075c132a4df402b390554c33644926d4d818d94864be28c79e0cf8eecef841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.2 MB (255153523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ace8b8e6bf510497402e45c63bd852abad7141199665f2523f7f3d9e27216048`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:50:47 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:51:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:51:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:05 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a6816d4436210a89c1970554645b3eae05c623ca309facbbc0a97dac8dc4d76`  
		Last Modified: Sat, 17 Oct 2026 01:51:31 GMT  
		Size: 158.1 MB (158117492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0078b5c2dc1d08a49d68445aba2b2badcd0a72fb35557961abb01eb520ca7b1`  
		Last Modified: Sat, 17 Oct 2026 01:51:29 GMT  
		Size: 68.8 MB (68785668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c7948504b0223254ee143923e44d6ac2b8e22ee6aeb1f1fbcd5661171f1d29`  
		Last Modified: Sat, 17 Oct 2026 01:51:26 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56e9d97dc8a4f12cea80882618a33acf7a0eea9541b701230915b1954307a45`  
		Last Modified: Sat, 17 Oct 2026 01:51:26 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:55400a3a9a6ff63e4c810df9d5ed9c4f96519d05d2cb3c60710ff0c8310d91d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5137150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:605d9470f77b7898789d47f1f990ecbd2b9e05c54b6dc8ea0a00264d3fb10613`

```dockerfile
```

-	Layers:
	-	`sha256:674c59ad01344c83cf0ef66d3fcef6845d71e9532f4d0da7f05930ce11ff3b64`  
		Last Modified: Sat, 17 Oct 2026 01:51:26 GMT  
		Size: 5.1 MB (5121160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:573562abbb236ef033a850f63e6aa323123d9ff743c734c4b8061c6cc9bdb8c0`  
		Last Modified: Sat, 17 Oct 2026 01:51:25 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5ac5cab086601e4f933f8662fa130473c000bb0a8daec9ddf704eae42874fafa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253284795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2da674bde56517734204574bac2145e5050f2262ce36112373d832b7107cf60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:50:55 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:51:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:51:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:12 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67aa869fbf4efb5c967d449f60e9cd12d48abb64354fb79596f84cc85de3d5d2`  
		Last Modified: Sat, 17 Oct 2026 01:51:36 GMT  
		Size: 156.4 MB (156400668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa09aae671a313375a3f505a79e2a283906102ef097000c625ffc21189ede147`  
		Last Modified: Sat, 17 Oct 2026 01:51:35 GMT  
		Size: 68.7 MB (68745907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430be9322d53afc828d8d058f22506388e8beae474b8c9081952d9501ec51a9b`  
		Last Modified: Sat, 17 Oct 2026 01:51:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e43543d590ead63bd446f1b40916c8bf62fbf1c4b1d2596dfe8e16353e59fc`  
		Last Modified: Sat, 17 Oct 2026 01:51:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:285a56245b7c7724bc5d21fd3831c8bf7de3d3efe2bfd5e8f18e2ec76c89cdc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5143029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dcb55c567fefd5e2aef7db0c2cf40644433e1b493b180fe648001e8a30f7a82`

```dockerfile
```

-	Layers:
	-	`sha256:ee1f7935ceda996abb365e792bd4c2ae28c2a6b120e330d933946471ad824bf0`  
		Last Modified: Sat, 17 Oct 2026 01:51:32 GMT  
		Size: 5.1 MB (5126921 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ceeb019167d9b2066b955aabb57f0ae6e3341ea4f435813887ee9cbe9929971`  
		Last Modified: Sat, 17 Oct 2026 01:51:32 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:27b0dbe29fd0a6682261c2e638da8edaf386baf7ce3834a3a4f38785f301e72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.2 MB (265162368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed7a9628fcf4067ca81c50996a152bc9a237851142a430531856e4c3ec3fff6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:54:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:54:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:54:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:54:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:54:41 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:10:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:10:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:10:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:10:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:10:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7593202845ab98fc7d37dbc710b97478d09d50c58de70f5671c2d3613ba77de7`  
		Last Modified: Sat, 17 Oct 2026 05:58:43 GMT  
		Size: 158.3 MB (158282663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d12dd8d961fafed908b7499da45fcc3c00f4781167f42d627ebf67abb4a54b`  
		Last Modified: Sat, 17 Oct 2026 06:11:18 GMT  
		Size: 74.8 MB (74786231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8431e50e57a6580192328ec782e38fc21c413be263428bd0b5995d93bf230157`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0497075295c6b82c1a7daf66a7775ae1b52f568a8c7ac3e9d18c048734a86554`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:62fe252e2f27455495cbdfb1bdd7c33481d26b7906d7e8c5b32727f529769148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5142356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba8dec073f50c67242f2858fe3681a1d02a2882ad209c1570ee21bebdb32131`

```dockerfile
```

-	Layers:
	-	`sha256:fda1b3265c15c4402a28538f1128eef2eea748dc9ef53160da2ae7b025a72a2f`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 5.1 MB (5126318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:417110162e2260e8ec327b0ad4e5de6f4526bfa10c75706e16a6489641d698f6`  
		Last Modified: Sat, 17 Oct 2026 06:11:16 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
