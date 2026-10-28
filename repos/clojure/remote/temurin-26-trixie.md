## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:4d7e5d912221b12c44617468cab26165deae9648e0f7bf7c6c999595f1c60406
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:263de1f0366948775a28ff1ff2b84959da4b2c3d608469e1f982626da1a5e9b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226526906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd1159d93904c3c4a5ce8b58dc87e408c368ae6610f56d0d4a5029419c53304`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:53:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:53:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:53:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:53:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:53:48 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:54:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:54:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:54:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:54:04 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:54:04 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:987afcf081f00cc104b1b34062e5998cce58b6c1ef6d24541fa69687c13d83d1`  
		Last Modified: Tue, 27 Oct 2026 00:54:28 GMT  
		Size: 94.6 MB (94563501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911c5cc1912027a5d38bfb1682584fcdfc9291fd852777941a5aabc82e62babe`  
		Last Modified: Tue, 27 Oct 2026 00:54:28 GMT  
		Size: 82.6 MB (82568740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11535a049101d270d26f03071e39d236e729b318449f77cfcaaec9f5aebd21dc`  
		Last Modified: Tue, 27 Oct 2026 00:54:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d12c940e654ce2a62c734b9a4095c0039594174f32800f0b28d53712a02bd1`  
		Last Modified: Tue, 27 Oct 2026 00:54:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5b556fc8bd9ad6f87df19c6e40fb3515cc9f71610d51872b576003964f835659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de161df243e6905b4df491eb8f6df780b14ff7c336e5d5f99578034212bf66be`

```dockerfile
```

-	Layers:
	-	`sha256:6aea5570adfe3ea23b961db631a9c7a58521a1cd6a11bc02d0956664b555495a`  
		Last Modified: Tue, 27 Oct 2026 00:54:24 GMT  
		Size: 7.4 MB (7441660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddf70abcc757132f534c6b943833afc9f069a38f0892ef32f7a30546ba3cdc9d`  
		Last Modified: Tue, 27 Oct 2026 00:54:24 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4ba6cb179ce24b9532eb1546cda687b5a0f335fcfea4c5157392cf77269a510b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225713338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2db71b2d921d81da6f0fba65d2f1a4059dadf4a6cac2a678ca304aa5532ccea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:23:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:23:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:23:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:23:01 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:23:01 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:23:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:23:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:19 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dfb68c024d5cdf4872bb7f0be8d63874aa6d0b7a0050f1b06169573e34ea543a`  
		Last Modified: Wed, 28 Oct 2026 00:10:44 GMT  
		Size: 49.8 MB (49776179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07d3328e96cadd666ac8b6de4fcfebeefe0492fc73817543a2fb2a63274da093`  
		Last Modified: Wed, 28 Oct 2026 02:23:47 GMT  
		Size: 93.5 MB (93543585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa05b7ffa3ff699c5b7b33dfb80bc77f9b6c0a62393dc4b52db6a56b5a10ee4`  
		Last Modified: Wed, 28 Oct 2026 02:23:46 GMT  
		Size: 82.4 MB (82392531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07db28aa4c32deb096a32293d498df887955ff00d8f1aa6732c74d60a6bbe9af`  
		Last Modified: Wed, 28 Oct 2026 02:23:38 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90866eeff6bbc7f0b1d068c746e94dca464b6eca3c8ee4f2fde37886f6fa3045`  
		Last Modified: Wed, 28 Oct 2026 02:23:38 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:46704d5b90b140f4f815936ec40f39520c44a9859e2dac92013acd5e07b575b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7464069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d63914425693d785a1efa6d0580db0423a5771bea2b43ee8c1f00e9cd144aaa`

```dockerfile
```

-	Layers:
	-	`sha256:70c59dd8688de5f43a7f266bd442f675924cf7e6c43bd8daed69b1f3d9de1581`  
		Last Modified: Wed, 28 Oct 2026 02:23:38 GMT  
		Size: 7.4 MB (7448050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aec006f87b52f4431654223b00cd1e26c3ee819805dcc9dde9fb09b08e7c3bce`  
		Last Modified: Wed, 28 Oct 2026 02:23:38 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:75f8b82f3a36f0c5ed7510c3665215d4c3217c76ead4bdfff2ac762fbbf53141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234556725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc3955c5b15ade03cb7809094fd9cb21caca90d614679181126d3877abb4f25`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:06:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:06:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:06:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:06:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:06:16 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:13:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:13:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:13:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:13:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:13:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4eae5bc71ca350693525cbf16d93b518a15152af983a68ab96e88feb15b4ec7`  
		Last Modified: Wed, 21 Oct 2026 11:10:36 GMT  
		Size: 93.4 MB (93350823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4686e45fd7e85057773acaec6866df931c9379e7d3f65d31a759da93a16a879`  
		Last Modified: Wed, 21 Oct 2026 11:14:38 GMT  
		Size: 88.0 MB (87997278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a3c385e8383c568885d73bd1d000e70df34f975ca35d3ae6eefb74c9f6940`  
		Last Modified: Wed, 21 Oct 2026 11:14:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030cbcd49f3b88ff13b99f674cfc39f1a6975f2e901bf46969bebdd0138aac7b`  
		Last Modified: Wed, 21 Oct 2026 11:14:36 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8fb1f3cd12a79b351500c3409b531f55930a7d4517b7bf8121a5d230c680defc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7446740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a97d1635bf75283d5ba43e474e18c20065431b8be5b6c34feed0ed7b985e10`

```dockerfile
```

-	Layers:
	-	`sha256:dd781832cfd53c20f26900d8ce8d33092f64e32d0b9e40c0ec0ace2621b61230`  
		Last Modified: Wed, 21 Oct 2026 11:14:36 GMT  
		Size: 7.4 MB (7430791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4790708f0fe4895bf7b6a3fee9e9f39d5adaca8e71f43d9deccbc4a720da666`  
		Last Modified: Wed, 21 Oct 2026 11:14:35 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
