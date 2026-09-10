## `clojure:temurin-26-tools-deps`

```console
$ docker pull clojure@sha256:a34c95837265d7eb2977a4f113ba8bbcb94b77802482aec0b90311b6d5c65897
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps` - linux; amd64

```console
$ docker pull clojure@sha256:f03f2e580fb0099371d15a74ad79d99de145f9fcba500d6fa2c7849f331e9a34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221236404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af38ecda9dd11baefaa92cabb1a15c0cd73f23be62fbf72b22287ab8c97f8a9d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:51:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:51:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:51:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:51:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:51:24 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:51:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:51:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:51:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 03:51:38 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 03:51:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17aac1882c0e6d7fc9f251b3408ecce1dfbf592eb76d17d35e512e672bcb69b0`  
		Last Modified: Wed, 09 Sep 2026 03:51:58 GMT  
		Size: 94.6 MB (94563742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d854f0f6eb3408c81d36a77bb5146aa55dfca0b1d4d5f6ccdd06083a841f89`  
		Last Modified: Wed, 09 Sep 2026 03:51:58 GMT  
		Size: 78.2 MB (78174254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b66cfa842fb1bb9bf18a9ca18c725c8cacef0af56d087c2a0ad429909e3951`  
		Last Modified: Wed, 09 Sep 2026 03:51:55 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a413914b0a37bf4e10b0b02512fe577007bd981c873dacdd365894182fce07a`  
		Last Modified: Wed, 09 Sep 2026 03:51:55 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:4f9a5c636863b659c8a70657b1c5312dc3899489f1e1f8bea926c42d3b892367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:138fdbb34b2c93cf861af684dff479ce3adf042aee54637a756f6f6ccd6ec902`

```dockerfile
```

-	Layers:
	-	`sha256:da48c341f0a7ee4bc844358fa34a6dc4a06af751950e46b2aa7b410f542362cf`  
		Last Modified: Wed, 09 Sep 2026 03:51:56 GMT  
		Size: 7.3 MB (7346175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29cd02c784da84be6e1a66bc5f63c2ee5633c73c0c59837accc3d4f30b633984`  
		Last Modified: Wed, 09 Sep 2026 03:51:55 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:700fb1719d73f4e345ca4872fbb5734e6df073ae21b6bae7c58696c84440b562
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220100948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e91b687e14f8fcd5c081406a8d2d305f6c12d0a25e880d0d445139bece310f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 04:03:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 04:03:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 04:03:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 04:03:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 04:03:36 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 04:03:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 04:03:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 04:03:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 09 Sep 2026 04:03:51 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 09 Sep 2026 04:03:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aa9a7129b14b57c67ad3fba43f3e5e2b6bf2aafe29b796441f27c33fb6ba9a0`  
		Last Modified: Wed, 09 Sep 2026 04:04:13 GMT  
		Size: 93.5 MB (93541641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7536fae0c076148af20f08c666c3dba02cf4e75aed0b53ef9636188a481b544`  
		Last Modified: Wed, 09 Sep 2026 04:04:13 GMT  
		Size: 78.2 MB (78174615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c849e6b585e3e43bb038b9133d9cc29058e6e44b95e452271dca003a7e90d46`  
		Last Modified: Wed, 09 Sep 2026 04:04:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be733602abbd55c6d02ea6056dfae99c1fb3d6658f2806cd7a8274f0d85afac5`  
		Last Modified: Wed, 09 Sep 2026 04:04:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:3eef53496a402ad334834ce99b26c4f4f0b2c1df5481e2a9f73488a4cb0687ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b595c968489062c9ba4cdd2b5f12a5ac254bb6e58d1999eb5fca99587b19037b`

```dockerfile
```

-	Layers:
	-	`sha256:928593543a302a6d708be4b53f87bf0fa6177e3cb001d0fa3910d89f107141ac`  
		Last Modified: Wed, 09 Sep 2026 04:04:11 GMT  
		Size: 7.4 MB (7351959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d11823950ab603803b45793c9e0818c114ea08f5acc77c2e2e2e9d06198dce40`  
		Last Modified: Wed, 09 Sep 2026 04:04:10 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps` - linux; ppc64le

```console
$ docker pull clojure@sha256:75ad93544f0f98514fb5c8e87f908679ba98ec941b969aa15d8ddac6d090efc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229677928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9c1e3d14d82e04fee35447b1062eff052cadc18ecadf5203a41bccd955a837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5c0ba1d980dee6b8e75fb7cb4f75335f2fe42a232754ee7c0ef5fd543814a`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0569b5205f3e3b2b4186620a3cafd4ea8f09391a7b1cc80d0b3df1314973520d`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 84.0 MB (83984337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fb5b52965899a879dc28df140549ed0a4099d5d51ba2600698afbf4ce07cf6`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae5655c99611b6954fbc21ff7ed7fb8d4354f77a454efca838a1cd19729b6ef`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps` - unknown; unknown

```console
$ docker pull clojure@sha256:c3f63da0c8b6f3fa409260c8d5956409eefbcfea87f8a91fcc4b6e745454a1b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3f2e4dccf15da85cf78231384d23bf69b8a02aa1403bc9f5f12bc54742e1b37`

```dockerfile
```

-	Layers:
	-	`sha256:5efbd45d5edbe2247605ef41b8f7abc53273a6f2671a74b73ccc9775ca254ce5`  
		Last Modified: Wed, 09 Sep 2026 11:27:47 GMT  
		Size: 7.3 MB (7336114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe51cc6f82034bb9485927acfb155484dafae17da0f05b36d4a81cabdc3c4af0`  
		Last Modified: Wed, 09 Sep 2026 11:27:46 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
