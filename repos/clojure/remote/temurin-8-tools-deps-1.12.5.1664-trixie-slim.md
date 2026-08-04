## `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim`

```console
$ docker pull clojure@sha256:9b6ed4d13985bf4de4b8320d8dedc1ccc64421a35573df48c63af23bff899919
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:be070e2e224938445d7117516574da6718d8aaff47d6b37bdff2b02faa860a90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153945110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ae81e83a355c5f72ad77081d87c6838aed78248d44d2c1a607f0eee3ae90bf`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:16 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:47:16 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:32 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24703a2b3b443a96a844022444721b5dddba0331660b57ae674c03d97c24cdf`  
		Last Modified: Tue, 04 Aug 2026 02:47:50 GMT  
		Size: 55.2 MB (55198669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f219d168a879280ea513c62dcba3c4a74a64793132160ba5a120aa2e29be91cf`  
		Last Modified: Tue, 04 Aug 2026 02:47:50 GMT  
		Size: 69.0 MB (68964890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30a530e5ff84bd159671dbab48723710973f40c96115e6819be3b53120a4317`  
		Last Modified: Tue, 04 Aug 2026 02:47:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fb1052d2db8d9e6a66ab58de6e01a308fd27fb95b61937b32445b3f9e7cfcb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef6745b2261c0b3406fa20e63330577bb9f61b39a283dc75610ec9e7b758df4c`

```dockerfile
```

-	Layers:
	-	`sha256:a7e41618ac27278d803bbb2f8f5fc39fb144fe3c4d2e5c28c5f4c03ff394f478`  
		Last Modified: Tue, 04 Aug 2026 02:47:48 GMT  
		Size: 5.4 MB (5377724 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4611e910d68ad5381e923f0a8743842f266cf35729ed8129a1d3121f50b7ae6`  
		Last Modified: Tue, 04 Aug 2026 02:47:47 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3490e3d31eadc34d20eae13371b1f71a011dac47dd613ac638f5187e6f79fdc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153203018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de509b9bc3b6a6475d77796d98f05505e5ed5e7b894633c8ff78701b9d81ea71`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 02:47:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:47:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:47:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:47:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:47:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32def4dbe2bfc73f4852b8b0b58b3b262c8d513e13418a80fc193dbd99e1cd17`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475e862d6d13fd1c1beb42cb41a5c3c0aae5ef56eb7ea0472299b317236ed1cb`  
		Last Modified: Tue, 04 Aug 2026 02:47:57 GMT  
		Size: 68.8 MB (68785745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3f073fc0735aea9b4520c947865adbf5bd1ded08283c2020476bae9101428a`  
		Last Modified: Tue, 04 Aug 2026 02:47:54 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:28b91973af42dce3d48a5170ad086a910e8291ec7b48b57164267c8a5b6e2776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c237589bb38cf76a50d113d11b6952b54ccb8f1f257bec5fcca4ad903f50179`

```dockerfile
```

-	Layers:
	-	`sha256:789c4073ac292a20f88897a18dfe9d51741e7119db61fd1a528b9e5c5e227790`  
		Last Modified: Tue, 04 Aug 2026 02:47:55 GMT  
		Size: 5.4 MB (5384185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a71ebe075a9faaa2019f59ad5709a2563c3b8680724ce7dc87a91430f636e1e`  
		Last Modified: Tue, 04 Aug 2026 02:47:54 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ea1668b4298453f3410f7e272fc8fb140d4e335653d3bc3622ab3b111bb3c882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160647508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16cfbbb30785c1e2c64ade46d0a0b0f01fc23a7153ba8aed527afbf104058ca8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 04 Aug 2026 04:49:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:49:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:49:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:49:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:49:24 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 04:50:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 04:50:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 04:50:19 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e4e32694fd19d370a5cb2a0f2022f275a77fa459bb5f90977b119d9924eb3e`  
		Last Modified: Tue, 04 Aug 2026 04:50:55 GMT  
		Size: 52.7 MB (52669146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6a09bf247ef399df6f5b119388c64ad406efd097a42bb72506c51a005423aa`  
		Last Modified: Tue, 04 Aug 2026 04:50:56 GMT  
		Size: 74.4 MB (74376238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557fcc48057dd3f972fc2093e20b2cb9c5fc19d66a7f72edc6e163997c7ad0df`  
		Last Modified: Tue, 04 Aug 2026 04:50:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7ddbac8754460d1f5bcce584ecc2ce5ec6c76b7edc0942bb501138a46b002395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:336d97d7588f45226ebad22eb0c4fa080897492f59f87bc0c7b32ccb1d499c4b`

```dockerfile
```

-	Layers:
	-	`sha256:06c0cf2bae1a1db7f6fd284d3fe6da41e38ddbaaa0ba98c89e1d3390bb0a78d6`  
		Last Modified: Tue, 04 Aug 2026 04:50:53 GMT  
		Size: 5.4 MB (5382690 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7662bad7dfe564f606cd9debdc92167415712404f953caa33ab0f64e47a781fc`  
		Last Modified: Tue, 04 Aug 2026 04:50:53 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
