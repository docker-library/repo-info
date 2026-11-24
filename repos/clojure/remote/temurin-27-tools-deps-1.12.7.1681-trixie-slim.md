## `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim`

```console
$ docker pull clojure@sha256:aed09d33a1c836e8894989677fb0d9d22b46389d8722ea44556166ad95b7c22e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:bc4680b31b936058056f242b95182edbbcbe1249c8a96968d4e01ace169e0aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192483159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e648148f51f2fcc0d83e2f5589c8d1e4aacdae3bc3b02b7d47072290632135f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:14:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:14:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:14:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:14:12 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:14:12 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:14:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:14:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:14:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7dc1b272a481307e07064d814c58fe6ca922ce58b3e74e70718b2c321bf8d8`  
		Last Modified: Tue, 24 Nov 2026 05:14:47 GMT  
		Size: 93.6 MB (93649642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77614343bfee733e595db0bc55f03645c79de8c9510dad0cc1944f6cb87dacba`  
		Last Modified: Tue, 24 Nov 2026 05:14:47 GMT  
		Size: 69.0 MB (68989795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f62843e2806764523818f86eabb189495421ed5e6343b5f5bc79227083ded7`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434da6a328d353c62f6b4dd4cbd3b15875f42f769ac3db89bf16267ddccea44f`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d821170bd593bede31cd65766123e121453eaf78c8e49222a385878717aebc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93aa499219bb4d3d20d888dd13d875f3beec0881fa64fb26d115c6842762a5d5`

```dockerfile
```

-	Layers:
	-	`sha256:3c9d894d876a09fd9008dcaaf89adecdc55d18bd2c649f7b20e5aa49589eeb3e`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 5.2 MB (5225759 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c986892a6e404414eb1606b9fd65a4efa288a08733cb76d60d142ef251fc16eb`  
		Last Modified: Tue, 24 Nov 2026 05:14:44 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c4df930c0910262d967dfc9b0c354f1f633af19ab28b8498ceee31ab8d0e4ffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191682036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:293d926f1d7c0ae655f548777b145917b849179ca880b960f2b1837e50de6e9e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:09:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:25 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:25 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:42 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da758a61dbfd485ac32bdada42ced1b6d58d511e8a385cf0334acfe1cd1b71c`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 92.7 MB (92660447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6c5380fb71ac22750c9ef0a1c0a569c38978a8372389062cd414d67da6729fc`  
		Last Modified: Thu, 19 Nov 2026 22:10:03 GMT  
		Size: 68.8 MB (68806004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2064ea99f0cc58b468bf357d983fc2a896ae59faea3565ec63f2c8d7e675277c`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05c5e122f6df918ac7a3f1fc47bdfc5a6ffddd13d2404fdc2cdfe43e1a33f73`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03a7314e197f1041b45d02f16a00dda907bc0855745f260521633bfb6dd09299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e00e09278d5ec4b33e111f8c1357b795a6d73a0607e741e1fc7144f62e23c428`

```dockerfile
```

-	Layers:
	-	`sha256:be898e01c81147ad6ac40365e4c9c35f2219d1a5ef14e40ecf952c00f5b70547`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 5.2 MB (5231479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f865bba71e11e3de34260814c212cf8d5bb892bd60e1a1df56a4ac87218a1e4`  
		Last Modified: Thu, 19 Nov 2026 22:10:00 GMT  
		Size: 16.1 KB (16076 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:cd5ac5c9811ea0e7c51263eea45f15fab33583dc1251778ad299be793f2b6eca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (199998027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7682602384ce09d636900500c438e504a1ae7ba3732ac570aa8643f8ab78a7d9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 13:13:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 13:13:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 13:13:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 13:13:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 13:13:05 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 13:21:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 13:21:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 13:21:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 13:21:05 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 13:21:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77460f63ffbbd60e78ebf62aee6406d52151994424c0d5fca464d8ef76632862`  
		Last Modified: Tue, 24 Nov 2026 13:17:56 GMT  
		Size: 91.9 MB (91933318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f2c73c76753ace5de4c10c8b56d90a46af91160598f4b67e30e08065943a9d`  
		Last Modified: Tue, 24 Nov 2026 13:21:47 GMT  
		Size: 74.4 MB (74410532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdcbe55ee3c75640649aef011943a6c6baa24eb9e66dd7e75c2c0d7f9b976b9`  
		Last Modified: Tue, 24 Nov 2026 13:21:45 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da73ce2f5535e36e4aef34120d6a71e1d056f89892a94a1780b3938bc0d2645`  
		Last Modified: Tue, 24 Nov 2026 13:21:45 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.7.1681-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d3d658a967f7d7121fdac355fd0fe9dcab92c739bc22bb0a109d0ab5f1635126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5228212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd6a5bb4c3573139507892253192c8c8b58a303fb530fff77017ac6d2904253b`

```dockerfile
```

-	Layers:
	-	`sha256:d2a6449b4a73b0899724175bf580026cfae247a9ded9b42ced0abe263292f789`  
		Last Modified: Tue, 24 Nov 2026 13:21:45 GMT  
		Size: 5.2 MB (5212205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e1345c043ecee3d35eafc54c47c8304c84353022e0e717000603927b5567d7a`  
		Last Modified: Tue, 24 Nov 2026 13:21:44 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
