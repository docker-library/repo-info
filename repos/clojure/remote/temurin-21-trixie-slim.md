## `clojure:temurin-21-trixie-slim`

```console
$ docker pull clojure@sha256:5af9a09aea8df99253f1dfc4ecad1a331b269eab10b3708612f7bbca143a4aea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:52585a1bf8ea4f074e49267fdfe7e3ca804871caf7d1966ffcee6fb16613dc2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256951798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b5b9417869598237e7900212e0d4a3f44b916fdea0f8f33fd0a4cdc8c738f37`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:51:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:51:22 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:51:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:51:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca777bc7240f249e0c66494d349ceff3b429e1c41c8522753201026b2e0e287e`  
		Last Modified: Sat, 17 Oct 2026 01:51:58 GMT  
		Size: 158.1 MB (158117453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5d3b40ff15985fc4d76119c57b49daa53d54ecea06e6c7c031eb28fa34021f`  
		Last Modified: Sat, 17 Oct 2026 01:51:57 GMT  
		Size: 69.0 MB (68989955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0a17e79d229009e70eb441410b1c9c4c209eeb18416b211f7f5ecc5837a48d`  
		Last Modified: Sat, 17 Oct 2026 01:51:54 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0466782f1e2e08fc59f105c9f6caf9b71d981fc4f9b53aea125c7d973e11a74f`  
		Last Modified: Sat, 17 Oct 2026 01:51:54 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb5f8464d7fdbc2a4c3d3140e6afae1dc9d31e7f3975921f62a172fc8566b7e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54fe61fa28e5968ccd49d997b524152c38b7146a5a5a565933cdc494080b1b0`

```dockerfile
```

-	Layers:
	-	`sha256:b0fe672827b3054eedc85bcfe4978b1a6c0836166613dc76ab20e749b710a234`  
		Last Modified: Sat, 17 Oct 2026 01:51:54 GMT  
		Size: 5.3 MB (5265166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2be08bbf17ea5847f48cabe71ef887ef31bd58f5fabd902ddf22ad28533d0d92`  
		Last Modified: Sat, 17 Oct 2026 01:51:54 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cfe7bf27971047f3d36fc3548d6dee95c1f75d9d7c2ab8fc7cb94b331d045879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255412435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b79ccb4b2748195c6da371f38ca69617e34601a52184ca49df34efadb7fcc9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:51:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:51:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:51:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:51:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:51:45 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:03 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:03 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:03 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d82e7f56e2381576d4f10bfdb7091b4b7dfba85029be3874705a63173c70e366`  
		Last Modified: Sat, 17 Oct 2026 01:52:28 GMT  
		Size: 156.4 MB (156400640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a167083b747afb1ca9f589c58005b74534173348df898b99342d8c8fb84a747`  
		Last Modified: Sat, 17 Oct 2026 01:52:27 GMT  
		Size: 68.8 MB (68810469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691e5c63476ff33235fe7b21224193d6b922e2e975cf8b8f2cf48f48c8152024`  
		Last Modified: Sat, 17 Oct 2026 01:52:24 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d38872a990cf574794dc3e3de29a4426a32a1c288b0b081584b43d807f89750`  
		Last Modified: Sat, 17 Oct 2026 01:52:24 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b11b3a05924858ab5604de987e11c054cb56609caecc88821ff4350bb7c7e666
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c273d345a541fe65aa24d17a0b92795aca9b169c60f762349084747746e2d7ac`

```dockerfile
```

-	Layers:
	-	`sha256:436947af9203500342b406c4b26599e6cbfde97964aedfe6e790a97acfa45016`  
		Last Modified: Sat, 17 Oct 2026 01:52:24 GMT  
		Size: 5.3 MB (5270927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5042730eb5f50fc5fa9bc27f88a890ff0935b0ad892eeb7c5c07dc701bd532d`  
		Last Modified: Sat, 17 Oct 2026 01:52:24 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:db19e66f9e09c93c681a1f3763dec73fbd21428acab185dc54e4f4e39e708962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.4 MB (266352657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893c2c5544324fb7f4c4f12de8e4e2c39a93a40710793bec118f213d248ae0ad`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:03:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:03:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:03:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:03:33 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:03:33 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:15:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:15:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:15:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:15:57 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:15:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc8db92c8093631fa89d93420542c74f3e69613279092fa836d43403c3a23fe`  
		Last Modified: Sat, 17 Oct 2026 06:08:53 GMT  
		Size: 158.3 MB (158282682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79c8d29e30a4fe3deb1d0059acf39757d609265b2cc298280f22a29a51b61c3`  
		Last Modified: Sat, 17 Oct 2026 06:16:47 GMT  
		Size: 74.4 MB (74417333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c11f4ed22204271226fa01bf6e6998ac4f9e7c47e03f09bb96c52399f3e38a`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e53236869370cc3d6c36766fb35ebd7580fa709281463ef06cc6bfbd14bdab`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0fe5f78dbe95233dff2e9ef5c56094253a34341ca44efa8b876ab0ef5d65d300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4881ca7a26cf380269c267854b59301ae3ce3fa54ada7fafd0e070e362963c4a`

```dockerfile
```

-	Layers:
	-	`sha256:1b24f4891f600c70ea25eb4f194e5b443f3cc56a702637e45bdafb74ff05d312`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 5.3 MB (5269537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce127336e9414606efa763569caa6098586d7dcd12bae15d1da3f8cec8161767`  
		Last Modified: Sat, 17 Oct 2026 06:16:45 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
