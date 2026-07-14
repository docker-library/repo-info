## `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm`

```console
$ docker pull clojure@sha256:c229c4259c60319f01d575eccdb0946a3e79edb4d7d1a39da6c628f9c3778244
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e7eec126f51977cb71550dbac9e6e0a8992c811394b9517d07b7bff029ee11bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284795642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107a133540ff7cc3041dddfefca1f14b7a1e80a542fa6a48b78238e381c29927`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:20:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:20:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:20:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:20:23 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:20:23 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:20:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:20:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:20:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:20:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:20:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e019fb76271d231aee5e303954f564472909f67fecdcd93c6b2b8f997b851c6`  
		Last Modified: Tue, 14 Jul 2026 02:21:02 GMT  
		Size: 158.2 MB (158166914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1752161c84b9b2b7f2c829c34e0c906d904bef08d8dca03b0e78bba8edc908f5`  
		Last Modified: Tue, 14 Jul 2026 02:21:01 GMT  
		Size: 78.1 MB (78130285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc06c1ccd3385dbc8b2147cf8acc18ff659766d5e579055e517f4cc107fcbc7`  
		Last Modified: Tue, 14 Jul 2026 02:20:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb40e35898ddc64c23a7534b9094b94e43247afee5fd8e5d07d217b9ff11b4b`  
		Last Modified: Tue, 14 Jul 2026 02:20:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:dbb4c63b5bf364cad7c6abf245e84dbaac0d336bbdfde6af72ff2a6e42e7f550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c95bc6c2473b9f1200a7083ef61dcf3a8ba5bc338992dfbd58d375f6e1a3c6a`

```dockerfile
```

-	Layers:
	-	`sha256:0ed74c04d08e7ee502772ae1fcafa74c5b49deb50ee4eec3a4075a8b31857702`  
		Last Modified: Tue, 14 Jul 2026 02:20:58 GMT  
		Size: 7.4 MB (7378706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:015f8f42cb160802ce56fbfeeb1a879d6a4cd4555fcf97b5597b00c611f69ce8`  
		Last Modified: Tue, 14 Jul 2026 02:20:58 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:56452a3c674334e2e5c6d6ca19297fc5ce3fda52c9f882361474a3d318c7e3a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282967586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49c35fe3bf00a380d67a99fe1529be16609fca1c486888c79616a851b7bb9f64`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 02:27:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:27:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:27:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:27:33 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:27:33 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:27:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:27:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:27:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:27:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:27:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d54c4734a4b440de0cdf4457e324bad856536aa7501231379190024dd23eece5`  
		Last Modified: Tue, 14 Jul 2026 02:28:10 GMT  
		Size: 156.5 MB (156461287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92dc35010453521b944ed00649dc5a32b0b306b8e2bb2635b862ad70701187c`  
		Last Modified: Tue, 14 Jul 2026 02:28:11 GMT  
		Size: 78.1 MB (78121570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46350b7d5235ab3216cca611b3dcbedaa8dd0206d1d7dbff20042efd5e78321`  
		Last Modified: Tue, 14 Jul 2026 02:28:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3253944ce8ca75e1836101c81bd52591bb4c51889e938c966a197ac913afad99`  
		Last Modified: Tue, 14 Jul 2026 02:28:08 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c6ee9526d5e8e49faadfb291d5e8ae60e6f5eda602d4c84c6a9d7445228ba9ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:078a0162d354b9b2155c0be33c145631aad7b53f140ae24f025adae5f7a606bb`

```dockerfile
```

-	Layers:
	-	`sha256:c5f501a7dd7fb23deb85860ca58fda127a7e6edc1384a4863fd05ee6c8ccf833`  
		Last Modified: Tue, 14 Jul 2026 02:28:08 GMT  
		Size: 7.4 MB (7384493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b33fcd9356eed9af9088d80b777b0efe27605b82fe75ffbe1345a5d1e616c99f`  
		Last Modified: Tue, 14 Jul 2026 02:28:08 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7ace5f386e6598b415ece39a65a7180a744801ec6267a7fc2e1a04f6425ef019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.6 MB (294645732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc01f53aef82e645b235a141d1b15dfb33d506bf36c40eef78448ddfdadb188d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 08:31:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:31:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:31:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:31:06 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:31:06 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:38:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:38:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:38:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:38:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:38:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a1a00534461cef179f0f766eb33099381a3ba82a4fbe7a54ae212cb6be4589d`  
		Last Modified: Tue, 14 Jul 2026 08:34:13 GMT  
		Size: 158.3 MB (158343147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b492b73159dead480b23582c06bb0988f8a588001e25ddc234e060439550c4e`  
		Last Modified: Tue, 14 Jul 2026 08:39:34 GMT  
		Size: 84.0 MB (83959708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c03fa936a7893d4d80a46ecee1a8f661cce099a3192358f4ef99e3eab27b0f0`  
		Last Modified: Tue, 14 Jul 2026 08:39:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6158540385e001a82335436adf43a0646e2e0e5d562bb78272331a85a60d09ba`  
		Last Modified: Tue, 14 Jul 2026 08:39:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f14ba3b01419d8394898fa3cc82279bb37f894944ae48debb48c05df2a023bd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc66e6c47774cac01f3851b5c7b97003441c56f0096247a3bc40d316087f881`

```dockerfile
```

-	Layers:
	-	`sha256:c0d43d28c501e03c5f3a41c64b1e81c48229d77977cc5526632e5662eee44748`  
		Last Modified: Tue, 14 Jul 2026 08:39:32 GMT  
		Size: 7.4 MB (7383934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed83fed6cfe1cfc85d397fdb94e2690c5fe95c88a7362db4b03478977d9d123f`  
		Last Modified: Tue, 14 Jul 2026 08:39:32 GMT  
		Size: 16.7 KB (16676 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:eb309b98791ca43d2bd66179a634689b07f10fd6708ff7605a5ae261b8d6ebbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271485575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97b39aa49bb987d704fdf44beda2e65724927c207691ff03c963db95c8652aa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 04:30:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:30:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:30:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:30:37 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:30:37 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:32:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:32:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:32:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:32:45 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:32:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196811e35c87249f8019aa2ba86efd5df75b8ca9e73b66cf9e78415cccc45346`  
		Last Modified: Tue, 14 Jul 2026 04:32:15 GMT  
		Size: 147.4 MB (147388351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979d4d5d74a88f45568622330a331a3062993feea31cf566e81b1876badfa5c6`  
		Last Modified: Tue, 14 Jul 2026 04:33:10 GMT  
		Size: 76.9 MB (76938907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82fd5bbaa498d65c88de2f67bd0c4416d3805bba0ac878b21ebb15fb246606c6`  
		Last Modified: Tue, 14 Jul 2026 04:33:08 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2382a639b77506583c9e33fe04ac447d628369480ed764301dc146d79a4cf54`  
		Last Modified: Tue, 14 Jul 2026 04:33:08 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b6c69d26a114280c6ea8bfcff24f72d30decf0c8af56e9886f12b95493bba32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04602becea1a9cefa22bf3724f6c68cf23f9593ea7f13c6e83234e03d294aa8`

```dockerfile
```

-	Layers:
	-	`sha256:186809face8c45fb751fc170a17d534f12e89f6d3a6b912edd9313e66731442d`  
		Last Modified: Tue, 14 Jul 2026 04:33:08 GMT  
		Size: 7.4 MB (7370025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2378d57eeeb1ffa613718c12122fa4441f63aeb5e908bccdfbc57421650e15f5`  
		Last Modified: Tue, 14 Jul 2026 04:33:08 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json
