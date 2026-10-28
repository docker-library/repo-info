## `clojure:temurin-26-trixie`

```console
$ docker pull clojure@sha256:e117c5b098716acac3514f97d049606ee5531e1c94e6bc263a3a1387c425af55
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
$ docker pull clojure@sha256:7404c85b741a0e3da3db07dd9bd2bdfb4661909435331da3859952666c43c48e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226542052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a053b753233ac0a6b0ff8beda5c0a43b707b0a871dbc14de01cef905411bd41`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:15:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:15:44 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:15:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:15:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:59 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a1d156b0aab5fb07d822a7f4681f6d3ed1689073531c34f5668818c233633f11`  
		Last Modified: Wed, 28 Oct 2026 00:11:26 GMT  
		Size: 49.4 MB (49407895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aee72b50c8da09ec4a436de04c2cbd2b8cfe33e119e50ecbafa84b3f3201173`  
		Last Modified: Wed, 28 Oct 2026 02:16:20 GMT  
		Size: 94.6 MB (94563578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf89208f5b2cc259f8f86134f23755c7219a6d709aa16f97444c4d8045f4979`  
		Last Modified: Wed, 28 Oct 2026 02:16:20 GMT  
		Size: 82.6 MB (82569535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1315b7d48a3e6e0cbeddcc7458cbac155a10beb3580bfcc71caa5695515ee93`  
		Last Modified: Wed, 28 Oct 2026 02:16:17 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d13ef491285c13e07213fe119b89501dfb56e785f7578e3ce36b4670bb03b5`  
		Last Modified: Wed, 28 Oct 2026 02:16:17 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a1a45292e30ce8be09d4e197a20a14f71c500db268cfb881b309abc4fa8ead45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7457560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba318447297177420807122fb3c110b207670f13a69671975a4c33c6f4834b57`

```dockerfile
```

-	Layers:
	-	`sha256:e749a3fd62a4daea62dbec11f4c870f6214c35808c9fafa09e5b8051eb65e3d9`  
		Last Modified: Wed, 28 Oct 2026 02:16:17 GMT  
		Size: 7.4 MB (7441660 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df17a61a32798014c1a36e07dbd146c5f4ca8f602203750b25a76f373f9a8e59`  
		Last Modified: Wed, 28 Oct 2026 02:16:17 GMT  
		Size: 15.9 KB (15900 bytes)  
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
$ docker pull clojure@sha256:457003e0010b5bfbfc6971cce3490e54b7d9ce5fe94416584711a90935817d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.6 MB (234571155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa54a11acadc723350a9c7f8b64ce358b15b88ba0b7d3958b25c3091e72f3956`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 10:29:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:29:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:29:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:29:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 10:29:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:37:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 10:37:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 10:37:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:37:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:37:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae13760e9d61444fcc2f77a748836f80a9445eeeb0c585eb266a2d03c5608a2e`  
		Last Modified: Wed, 28 Oct 2026 10:34:22 GMT  
		Size: 93.4 MB (93350842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b65d09fc97eec7765b86ed4a65d4f63e897c18e519230248f5ce1b3c5904103`  
		Last Modified: Wed, 28 Oct 2026 10:38:01 GMT  
		Size: 88.0 MB (87997026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41fa65364e642e326ae5e95942ed0f810c819935e7482838d12c7132e5f1bfd`  
		Last Modified: Wed, 28 Oct 2026 10:37:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e1079dc3b0c02d7a80f4a58cbb455f2722dc61d13ceb8757de9264cffd0a609`  
		Last Modified: Wed, 28 Oct 2026 10:37:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:2edb5be7271457ab247966e78d3dec4c8552d469049c20a6ec4998aad5d99c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666504cd247bcc324d894f50f6e579a3c5fcea8f11eb758dc03639b6e7604b75`

```dockerfile
```

-	Layers:
	-	`sha256:7b994f6f8418f13d4b2f6db6572480ec19f7ced14d0c7c768aa54ac199c0f10e`  
		Last Modified: Wed, 28 Oct 2026 10:37:59 GMT  
		Size: 7.4 MB (7430013 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cba63f0c5891279f4ee2d636ed2b24c7956c7cf8871b7f16152a5a3791e920b4`  
		Last Modified: Wed, 28 Oct 2026 10:37:58 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
