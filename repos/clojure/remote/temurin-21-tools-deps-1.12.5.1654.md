## `clojure:temurin-21-tools-deps-1.12.5.1654`

```console
$ docker pull clojure@sha256:8be659da96a07044b2a5edafe7241366156c7c68747bc442d45238a7fcd2c390
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

### `clojure:temurin-21-tools-deps-1.12.5.1654` - linux; amd64

```console
$ docker pull clojure@sha256:4e1b905980f26d9a3de99b63eb7c92bab8cd84f54f64913eb53968b989229ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284795384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98cd4b122891a3db97f6fa3cb4b0295116b1c01be681e026913ae78cebdadc32`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:33:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:33:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:33:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:33:30 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:33:30 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:33:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:33:44 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:44 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:44 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539485c4012004d008c07634cb676acf15e888d425cd1f1f151029f7fa94866a`  
		Last Modified: Thu, 16 Jul 2026 01:34:08 GMT  
		Size: 158.2 MB (158166994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4666a7700b65769997f8de9073099646da9969354269df8beb2782505293c1d`  
		Last Modified: Thu, 16 Jul 2026 01:34:06 GMT  
		Size: 78.1 MB (78129948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130f73d40c9c9f80f6957a95597c4f675bcc9e9a7c7f6dddf132e567ebf9a34c`  
		Last Modified: Thu, 16 Jul 2026 01:34:04 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59857a3ecf3a76248ccbd722aa4816ddeb97540d0ff510ad39ce6bdb55bf78cc`  
		Last Modified: Thu, 16 Jul 2026 01:34:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:9dc866e0e6fc2ada051262b78d479e29553ca86be076b1c38411f76243d86d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:944f7386392cb1b7e04017e3727b9e0be76838c834c008425cd9c96997c0cd0e`

```dockerfile
```

-	Layers:
	-	`sha256:638db3181fcbd661d19ca6ad472c10cd72ae14ee9e844f818ba4aa6d1663a3bb`  
		Last Modified: Thu, 16 Jul 2026 01:34:03 GMT  
		Size: 7.4 MB (7378706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:674319214e542a0df2a5a880b391ce708d04550a01ce0f776e037c7fdbabe328`  
		Last Modified: Thu, 16 Jul 2026 01:34:03 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:6596cd08c4e43044c502a797881924457e67e5b7fce727a041b65c87e5a34b76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282967549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552154d9c67e22c52cc508c3c410a89a13868e2aa3897246f22855f323fd099e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:27:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:46 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:27:46 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:29:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:29:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:29:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:29:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:29:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d01eb8469b94d01f57e197670cc866a1738393c64777240c49b19b1b4d9078c`  
		Last Modified: Thu, 16 Jul 2026 01:29:16 GMT  
		Size: 156.5 MB (156461296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bfba318bbb9d7553c6f567102dce1affc1553aa2e18e8ff4fc9bdb94fa8570f`  
		Last Modified: Thu, 16 Jul 2026 01:30:03 GMT  
		Size: 78.1 MB (78121520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec4873a1042331d80dc1641edd7a33b1f70c70c2c1540916ca3beeb727e0927`  
		Last Modified: Thu, 16 Jul 2026 01:30:01 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56437f33902fbf48a216e61631feb9651dc3b5109e6d907ee19c5211f95e4a14`  
		Last Modified: Thu, 16 Jul 2026 01:30:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:68e73abb736dc8fdb2c42206044915e92219316332d07cc24ff7d946e5183d50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0daff203393a60f9a463779d2124510a0b6faacc8bbdab480bafb7abe882c5`

```dockerfile
```

-	Layers:
	-	`sha256:270c8add0b514829245136397a0d4359c2adc0b50ab75bba4d3939fdf3209473`  
		Last Modified: Thu, 16 Jul 2026 01:30:02 GMT  
		Size: 7.4 MB (7384493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12a97bd2c367028fc06cc2041bf65352f5a1b347f1cbe5c57e0d64ec482c1c1d`  
		Last Modified: Thu, 16 Jul 2026 01:30:01 GMT  
		Size: 15.8 KB (15802 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1654` - linux; ppc64le

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

### `clojure:temurin-21-tools-deps-1.12.5.1654` - unknown; unknown

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

### `clojure:temurin-21-tools-deps-1.12.5.1654` - linux; s390x

```console
$ docker pull clojure@sha256:460360e5eab8bf7957a78de51f26fe81599ca3747022ab9d17e4fda5e82c653d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271485152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5934ba97d56343c1226bf07ec1e73f10e5f64104423a360e92fab85a36d3f2e8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:49:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:49:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:49:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:49:49 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:49:49 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:52:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:52:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:52:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:52:20 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:52:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4812f56310f0b1f5f6aee1df937e7b04c3a178a2e1815956a8e3fb4d2b23cdf1`  
		Last Modified: Thu, 16 Jul 2026 01:51:42 GMT  
		Size: 147.4 MB (147388347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad4003e7db7e26821a5eb20785978bd659e0bd5479015b82f1149bc5b4ea11e`  
		Last Modified: Thu, 16 Jul 2026 01:52:50 GMT  
		Size: 76.9 MB (76938486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696129c51a4387c4daa83247c1459db33cfccb6ccb542ea29deff8220ae48de9`  
		Last Modified: Thu, 16 Jul 2026 01:52:48 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e1d98223571b2817b00bd2800d6d17aaea2362e1a736945a35ada6af45f99e`  
		Last Modified: Thu, 16 Jul 2026 01:52:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1654` - unknown; unknown

```console
$ docker pull clojure@sha256:373fe6500159485a65ef38236fac0f6f5c170d90e641058a4cb4e06596b171d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d4fd55c0ac142ed4fce3d3ba7c640b774585f0fa3937dc7993a59269a6ddb`

```dockerfile
```

-	Layers:
	-	`sha256:c5a850bfe7efb731883e9677eb142a8128f5573414f8d8926d38f7e146520ef7`  
		Last Modified: Thu, 16 Jul 2026 01:52:49 GMT  
		Size: 7.4 MB (7370025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:288bd368efd37aa641b66eaed38be6e545b1c2f9fe1af0dff5dba0e5eb04e4c4`  
		Last Modified: Thu, 16 Jul 2026 01:52:48 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json
