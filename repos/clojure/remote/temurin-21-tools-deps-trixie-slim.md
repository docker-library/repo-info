## `clojure:temurin-21-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:57c0ce162e430f308e3f63a950dd2a99bc0336425c6050e0a1ece9eafc7c3160
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:b8c1aa3f34078725f5de17fa46ecead2489c74d90cef89bf9fdd6f15807c86c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.0 MB (256953481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3522ba4027cb70381d3a6225846b21ac05195c2858459b89b852d80c949273a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:13:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:13:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:13:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:13:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:13:15 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:13:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:13:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:13:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:13:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:13:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce53f6f041dee3d721b1a7598cf5ccd53df4d66dd9226b65b5a5c423c6b855b`  
		Last Modified: Tue, 06 Oct 2026 02:13:54 GMT  
		Size: 158.1 MB (158117474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143ae9f5022472aa75455c8963b7d60687eacab3fd5269884196edd017985f8f`  
		Last Modified: Tue, 06 Oct 2026 02:13:52 GMT  
		Size: 69.0 MB (68991613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8badabc4700874ab8bb1853f1d4fd06315eea2c853bd6ca7e6e45eb9fd1c5aa7`  
		Last Modified: Tue, 06 Oct 2026 02:13:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76b19c1272d852027c84e4511745eca2a8e8e1395b724dbf77382bb134cdb74`  
		Last Modified: Tue, 06 Oct 2026 02:13:50 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c7f9517a1a57b3c11db60eb28f9a27cc94790053360161f75bbd99ea44d19fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9449d090c10ad7bfa7898cb8029bf7c87d7911420d740c17a42729e715c8e1d`

```dockerfile
```

-	Layers:
	-	`sha256:d98b5a533d478e15a1ee23aa0287f933e3f9d53356d3aa3b70062271a2118c19`  
		Last Modified: Tue, 06 Oct 2026 02:13:50 GMT  
		Size: 5.3 MB (5265166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:678be3f2fe01532632d46ccc648211b65b69f34c694ceb7c24357fee722840aa`  
		Last Modified: Tue, 06 Oct 2026 02:13:50 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cf58bf8713b49f2f14dac090dbe16b3550ce88a374fee987efa673773c1d4667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.4 MB (255410676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4143b16d2dd200ceefaf9d11c4171314aa80db6cf2e766f58a8ff63b55d3cfeb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:19:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:19:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:19:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:19:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:19:12 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:19:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:19:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:19:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 02:19:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 02:19:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec4f93c505b03209f2ea68e7fb2a57c62ffba6bbdb536392456e53161d9764c`  
		Last Modified: Tue, 06 Oct 2026 02:19:53 GMT  
		Size: 156.4 MB (156400692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082d95ce59e8861ab51f43cfccde04d5516afd2bd2b27d8f08281dca4492345e`  
		Last Modified: Tue, 06 Oct 2026 02:19:51 GMT  
		Size: 68.8 MB (68808660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f61109c761fa971335f25a8baf210b0a23735f17d5d244dcd53411d219b641b`  
		Last Modified: Tue, 06 Oct 2026 02:19:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9e99d75c3766ea002edd15af8fdea7f9c5d08e0afbcff92fc37767b94753ac`  
		Last Modified: Tue, 06 Oct 2026 02:19:48 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e59ac94d142f41951b950a9fdf94186616540902e61fa25cb37dd3c0bd20b9a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11980ad8cd41a78504fed941172d8bbbf685da9db14765890e179dacb9c0cb3b`

```dockerfile
```

-	Layers:
	-	`sha256:2ede50c09e20026779b8c8f631d7522643114793541b8f17c7d146a4e185c942`  
		Last Modified: Tue, 06 Oct 2026 02:19:49 GMT  
		Size: 5.3 MB (5270927 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:420f299bf4fc9a6555260b52878cc7caec459e0dd7fc49186b5f8258a22be661`  
		Last Modified: Tue, 06 Oct 2026 02:19:48 GMT  
		Size: 16.1 KB (16083 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:9428ee0f44c3cd1c4e771dfbd124e376c7f37f2bc6f1978b4a0c966467fcc112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266347147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36526ee4a5dfc20dfcd697cf607f7e0d7ced1b85a2abed85873ceccc897421b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 10:22:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:22:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:22:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:22:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 10:22:53 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:31:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 10:31:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 10:31:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:31:35 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:31:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40fcdb2082bf58f4323e4a1311f1ddc3f0fe390c5cc29020cd69b7dafe5574d9`  
		Last Modified: Tue, 06 Oct 2026 10:27:29 GMT  
		Size: 158.3 MB (158282676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea127840ed13f24b65dc3d0727c8995a63c62e6201255432dc876482084d9d2`  
		Last Modified: Tue, 06 Oct 2026 10:32:32 GMT  
		Size: 74.4 MB (74411830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84de649fc2e07863526876831e7bd322c5c112f26fb7a9cd9a19e0d0e3bd08bf`  
		Last Modified: Tue, 06 Oct 2026 10:32:29 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ca1af6bd9e57b5532efe58295382621619f53f83caa668805729b863bd5b19`  
		Last Modified: Tue, 06 Oct 2026 10:32:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:95d0ca5c11afcf84bac23408a4567d4bd5d09285735890015f75731975fdb46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5285551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9880d0fb91ea34f7f452c5ea5604941ea7a947420bae0c651452c447b428340`

```dockerfile
```

-	Layers:
	-	`sha256:d9aaecf1e52d84a99e7da26b2d3679fcaf3350747069dd54e732f9d72b7e62d0`  
		Last Modified: Tue, 06 Oct 2026 10:32:30 GMT  
		Size: 5.3 MB (5269537 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20792d4df0bb9778c1cd22ea70ebb898d7613c5b9a5f89b934c862eaa4b1eea9`  
		Last Modified: Tue, 06 Oct 2026 10:32:29 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
