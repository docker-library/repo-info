## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:657c0d64f991489a69737f1cf0aa71bec02105b11712e7bb72d4a2d7b2846687
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

### `clojure:temurin-17-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:8a6f804469d70f5f4d40b7b882e020ae1a45d96e48a12a28ce849085af3a5d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272547466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02a004619bf3263fbefcfd774636c6cfac7dae431a1a620aacd6da4143403217`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:20:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:20:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:20:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:20:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:20:52 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:21:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:21:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:21:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:21:07 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:21:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23fc778e5e731d5911ff164edfe12cce28e735bf9cbc205f512a276f613cad7`  
		Last Modified: Wed, 05 Aug 2026 01:21:30 GMT  
		Size: 145.9 MB (145905439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936d93e8ed94f88d958733ee35180e27d8e2e18caee6f221ceb5be340851747a`  
		Last Modified: Wed, 05 Aug 2026 01:21:29 GMT  
		Size: 78.1 MB (78143894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6ea546b6a08be026824f762b755c964342c81751f3ef3c40f50ef1e0046023`  
		Last Modified: Wed, 05 Aug 2026 01:21:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30cf7fcaebbd84d415fee095de9ea6b823e8438e9f3d82f5098031265a1535b`  
		Last Modified: Wed, 05 Aug 2026 01:21:25 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:415e649006764ff482b34b76765c13f82e5c84f82c33fdefa0bc940e1c7ae75c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7392102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8dd778897490f6271f460f60a59461d27264dd527823e0d6df21e03bb45c45`

```dockerfile
```

-	Layers:
	-	`sha256:f3c017696a81788a589ec84f8550f5959402be400598ab721eb3f4fe5db1ed7e`  
		Last Modified: Wed, 05 Aug 2026 01:21:26 GMT  
		Size: 7.4 MB (7376170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53034758aaecc6dc9e097b60a1839db644123c6934be40fc6d6038370985670b`  
		Last Modified: Wed, 05 Aug 2026 01:21:25 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:289ce4ed00571fa6d06a3a7e416e41e3e017b103c47d5f7021826eb1fc92cb4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.2 MB (271236708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d67da3e7015128da1a35f4e736e59c3a0c7d149b041fe563d217a30a00f458`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:27:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:27:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:27:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:27:01 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:27:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:27:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:27:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:27:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:27:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:27:15 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da27a27e0bd988b5b9b383cf0f0f67c3ce33f43be53623cb67f2d606727f13eb`  
		Last Modified: Wed, 05 Aug 2026 01:27:39 GMT  
		Size: 144.7 MB (144724300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f4221fe7c23af56863dd57774242b96dabc4e7a60c2433a83a60e7751c7924`  
		Last Modified: Wed, 05 Aug 2026 01:27:38 GMT  
		Size: 78.1 MB (78127987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801bb0c0d2da0ff7dfaa9af611c259de40a9eaa70d63b711a0a26cdf8a7c7899`  
		Last Modified: Wed, 05 Aug 2026 01:27:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602c9c815b93b9362a48c2c8f7476a223ba6de893e23379b02eac6740240e920`  
		Last Modified: Wed, 05 Aug 2026 01:27:35 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7513f8ac33de53cfaa76ef9b0d216fb33c00398310b411f179822c585c6f7fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c537e6e96d603418e4032106d93795032389050a257015753c5ed66095594c`

```dockerfile
```

-	Layers:
	-	`sha256:f5295f332ca2a14337bb18e7f4608fec567375e62f645a36554c6dd44ba57eda`  
		Last Modified: Wed, 05 Aug 2026 01:27:36 GMT  
		Size: 7.4 MB (7381933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d98cfbf495c4574df0677d70d31ef0d501603f03d9bd293be04e57a3a4dd10`  
		Last Modified: Wed, 05 Aug 2026 01:27:35 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b09ca3c289659a9d6f864e4baa97026a44e48a6bebb13a0d202f8c4475133050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.1 MB (282082181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245862cd714ab74ac942b4ac4e0165fef06fbc4a4aef0d64297cb8f60d4db597`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:29:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:29:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:29:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:29:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 03:29:59 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:34:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 03:34:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 03:34:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:34:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:34:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf9b001c3c03526ee978c85cbf44ef2b90b2685e4627dc3481258c9eb34d3c3`  
		Last Modified: Wed, 05 Aug 2026 03:33:16 GMT  
		Size: 145.8 MB (145766102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76ea18c0a93c289c0fd8d742ca87392cfbd6eb88f87f8c73938679d37ee185e`  
		Last Modified: Wed, 05 Aug 2026 03:34:54 GMT  
		Size: 84.0 MB (83973563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e99f38d99a1306e5764a4eb3979bc7fbabb95d8ebc1bd55dba5a27aab974b3`  
		Last Modified: Wed, 05 Aug 2026 03:34:49 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5d0066b895cd39c0c2902b0f930d4b4b05c6460c7fe906cccc6160f5e21a54`  
		Last Modified: Wed, 05 Aug 2026 03:34:49 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:279e11d254c24051dff4ea86120e55e4c02d311c44b0faa001216a3abcce1324
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7397366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:897a240034ac5b2eab2bf092be2ef288d6d00e5920eb64108b80c478f3760514`

```dockerfile
```

-	Layers:
	-	`sha256:e3fa5d1ea031b06fa2b0fa0b367b7e311c0f8a79fe133316c38e055cce8c689b`  
		Last Modified: Wed, 05 Aug 2026 03:34:52 GMT  
		Size: 7.4 MB (7381386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71a6204729685bc2cfa749115dfcdaeb3d9b4ec648fbf7f2d8d065e9502b80d6`  
		Last Modified: Wed, 05 Aug 2026 03:34:51 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:bfcd0c16d5a90886e999f94a06b177b0e03be7b2132f5628230c8f00eab96daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.0 MB (260005284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:355b290e1957c6191b81e5bb3376af7bb4305ec2b8125d116abc49a98a36abd4`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:54:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:54:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:54:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:54:52 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:54:52 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:55:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:55:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672cfd80b2de9617a2807862b99a35247a3554b24a104ff21c4f4aab84991079`  
		Last Modified: Tue, 04 Aug 2026 02:55:36 GMT  
		Size: 135.9 MB (135910420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e09f1300f82a0c031d26b24874334025950e626ce5f55301e60a02fdec63267`  
		Last Modified: Tue, 04 Aug 2026 02:55:35 GMT  
		Size: 76.9 MB (76936543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75466306a78aefde637270a1e67569574cc485dcbe7b3da721370c0ac7d221b`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f2119ee928bf31b98f4191d1a18f0c88ed79258c64618951e10fdaf59fddf2`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b339daa609b75a55d067476d44619f812d00b542348e302afb9825ba45ee8040
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7383420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4e9820616567c0a84c3a77001b1e6e91eb98c6adbff039b35aad4fce0765c7`

```dockerfile
```

-	Layers:
	-	`sha256:de8ea0eef1f7d5296073f25190b396c6822ec10d7e2ea8d1c26ca40ce3ec9620`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 7.4 MB (7367489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b952204e8f0ae27c5888a602be355bf08318575a90b4d1ac68ce0b043536e0f`  
		Last Modified: Tue, 04 Aug 2026 02:55:33 GMT  
		Size: 15.9 KB (15931 bytes)  
		MIME: application/vnd.in-toto+json
