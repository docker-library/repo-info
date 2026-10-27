## `clojure:temurin-17-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:3df56e920730749267e0f633a009826cdef74fcd136fc56d4285b8055df38d24
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:b75952a6eab259008a53ad30ca355e559b186a56bd1275bf449253585f545bef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277789505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e0d94a729c25df30b00930503d9259f5ba9cd4fcd04b4c4971244a4a89b1ea`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:49:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:49:16 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:49:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:49:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:31 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed43aaf54b86d7200afac1bab3f79050358dc6c8c659753c0e52efee0a9dd048`  
		Last Modified: Tue, 27 Oct 2026 00:49:55 GMT  
		Size: 145.8 MB (145825444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b5740440a583989cd435e09e08bda73d8e9a508184e0d59212bfc692f3b150`  
		Last Modified: Tue, 27 Oct 2026 00:49:53 GMT  
		Size: 82.6 MB (82569394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0844bf6dfac140a98ff2822e96ef8ee3ef2fffb5baf10e80a5a0df88fe73fb2f`  
		Last Modified: Tue, 27 Oct 2026 00:49:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0758bee335ace0450d781499114de87ffd541e4306ea0283fcac98520bc20c3e`  
		Last Modified: Tue, 27 Oct 2026 00:49:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d1f08ee8cee48395fae3a193d492991ea08f2cb95180e1428adfa089d53daf58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae539dd9778e937265a36b7f6022931c52006c90216b78c69470acad43967d6`

```dockerfile
```

-	Layers:
	-	`sha256:7ea7c36fe9bcf3456a3a8e9e1a12516adcf1908b85178dbc52da3bdd1f865200`  
		Last Modified: Tue, 27 Oct 2026 00:49:50 GMT  
		Size: 7.5 MB (7476767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2820cee79f1461bd50950a7299dec70af57fbdd35c379a9d4f8fbafafc451d6`  
		Last Modified: Tue, 27 Oct 2026 00:49:50 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:71b840b2d13797bf41409cb151c59cf1b5eca6ff513631aa971bde65e2505835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.8 MB (276804190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e51c2750f1dfc7d45bc48635deffe84547aac9cf1bedd13d4f4335ffa490590`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:49:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:49:04 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:49:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:49:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:22 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49eb4d23f58a67681a3333b580d62ffdf8555406fd45fa93f7748b429008851`  
		Last Modified: Tue, 27 Oct 2026 00:49:48 GMT  
		Size: 144.6 MB (144648253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682cbd8039479c89583791b18f81c88972c74b33063ab26a90c5c7a71955fbb5`  
		Last Modified: Tue, 27 Oct 2026 00:49:46 GMT  
		Size: 82.4 MB (82393291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbcaad785d9f816c8760defb120e916775419986273e546a68c5da9571475bf`  
		Last Modified: Tue, 27 Oct 2026 00:49:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e60529c096647ec95506e32dae88262e31e40d92820b2d31f2a0d53f4ec31dc`  
		Last Modified: Tue, 27 Oct 2026 00:49:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e2eed3eb80bfcbf4230e88c8a38078b8d4a2ab1fbb0b6b0da801f9946d9d7b54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7499186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74a08f901c817a7e083e87a0962c4b22d97bb9740c00b7b493e6d70c438192c8`

```dockerfile
```

-	Layers:
	-	`sha256:fc329a6e8ce85c12e484a7364ec628a1343b072cf840fbe1e97af82371602621`  
		Last Modified: Tue, 27 Oct 2026 00:49:44 GMT  
		Size: 7.5 MB (7483160 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d760e6c9e0daf14fd7d7a357c92eaef85e9a57eb18256b64ea3ef11b1c582bea`  
		Last Modified: Tue, 27 Oct 2026 00:49:43 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:f937dbe982bcbcab0aaf4080585343861742e4fcc1a69a6f7aab17f093498f18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286877401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f587576cd24107ee4943407022bcb50d214420065d546d3e9081a38457a412`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:31:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:31:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:31:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d991bb03d5462de6b4f904f3edc8c81d52a86ba28e1ac127c47fa2ae7b51e326`  
		Last Modified: Wed, 21 Oct 2026 10:32:37 GMT  
		Size: 88.0 MB (87997246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49ef48c93aaf9fe0f6f70f5f0fa11dfcf81f83185b624c179499837b8cd6988`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad80b6c30a7671335fef099cbadd9c01c49d924a4b7b2accf4eca2ca4ca58a6`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4440521aaeb3ad5e0529edfbffbf5226d187b41f7f765042f0334c6223cf4dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7497918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0946735d9bbdfba573a7d78665a97a4ddeaf79e0ac8dbaedeb6e248df029c5c6`

```dockerfile
```

-	Layers:
	-	`sha256:9ce6ce73a2a935e14336e01d9a4ce7f59a03c918a2d381a2cf9af5570180ec1f`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 7.5 MB (7481962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:098219e7777c5cb5c15753be0083cb031ab7c478015d9ee3396788854eb262e1`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
