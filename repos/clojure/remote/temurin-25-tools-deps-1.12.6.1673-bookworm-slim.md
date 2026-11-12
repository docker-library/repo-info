## `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:58409dfeb25d0982fdd8bc037a012966ae1848fde51d4022676864dd47631837
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3b466ec9834ab4d034f57bcc133f6210d95047d866a580e014e3ed3bc0bd29ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187356523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3f0f39266003e6d8b6546ebb868e11d6d7316f1105788f478f89234153a9ab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:51:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:51:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:51:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:51:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:51:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:51:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:51:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:51:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 00:51:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 00:51:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db86b0b49021c140b3eaa1cccc0cb51f97a85a5477f2f381cd2d63785fe70dee`  
		Last Modified: Thu, 12 Nov 2026 00:51:50 GMT  
		Size: 92.6 MB (92598843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae3ed864790db4cb0a4d8c46b23e25c7cb5e793d458e0f7046dc8dc1fa52e2a`  
		Last Modified: Thu, 12 Nov 2026 00:51:49 GMT  
		Size: 66.5 MB (66508151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45f1b5f318ecb3573abdcd7ba7d0a8da67414a0104780b01ff124d289941007d`  
		Last Modified: Thu, 12 Nov 2026 00:51:44 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2bcb072cc2f82d773bb8d4c7c3f9434b7d5779a58840e1e3e5dac102fc8a25d`  
		Last Modified: Thu, 12 Nov 2026 00:51:44 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1af40847b1cb68179e07eb071945f895c5dcab65e262e0a92891116b0b84d98a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e391101777a394c206fe8f2ea91abc9f6b1ec073334a1a767d60409dc070078d`

```dockerfile
```

-	Layers:
	-	`sha256:2800a1a784c0f2ea934d6c7ba1eb3a00489ad8ad6fb83e89f3323bc66ed58835`  
		Last Modified: Thu, 12 Nov 2026 00:51:45 GMT  
		Size: 5.1 MB (5086197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f338a7e834e1dd89895763e4f6f9b0dd54ebb3770726a18bd41be42f211cafb`  
		Last Modified: Thu, 12 Nov 2026 00:51:44 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f5aec14cfcd40febc31efaeab443e33e645c503ee7c6db7e2e148d3c69707a1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186171679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1caeda1a42abca1927532007851c6de996fa7a5e1fea2938b0d2c22837d58074`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:06:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:06:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:06:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:06:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:06:46 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:07:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:07:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:07:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 01:07:00 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 01:07:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a4d1f77a2fc1eb9cfc5ecafbca65d6df865638e10d151fb1beb28d8715bbd3`  
		Last Modified: Thu, 12 Nov 2026 01:07:21 GMT  
		Size: 91.5 MB (91525578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbfff3f2f84bd1472713007d30eef2e2265b7efbe3736cd7446a6da323ffb13`  
		Last Modified: Thu, 12 Nov 2026 01:07:21 GMT  
		Size: 66.5 MB (66500196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c5cbe2eeed071823b0ecce6c32d6369a7acdc54141c7954e2bf29af87129325`  
		Last Modified: Thu, 12 Nov 2026 01:07:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68ce2fdf1a2c45df54eabebf9813c3f06b8afd5195a35aad452924dd513ebe2`  
		Last Modified: Thu, 12 Nov 2026 01:07:18 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6bccfad253e55387a7585fa678407648ddf3a3e0a744a598c6ce88505658e92c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb323ba892e903d50b4521ca1b158b3b4be89b6c2463d57521679ef932f627b`

```dockerfile
```

-	Layers:
	-	`sha256:9bcdee51ead1b3903f1c9c9706fd4728a6cb316231c7e51985f4723362fed104`  
		Last Modified: Thu, 12 Nov 2026 01:07:18 GMT  
		Size: 5.1 MB (5091979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b007989b60646ba0d341453017904485fa99f259ee97efc5efd8889d74d255c`  
		Last Modified: Thu, 12 Nov 2026 01:07:18 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8124eb0e78a2d517826e277d98ebc73a1dd1e7e9accb1ebf64bf3caeaa1a3b95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194540537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b134ab298c9ca290f410b153756e7bf121fbb47b0864d520a17576e3a431f9f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:10:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:10:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:47:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:47:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:47:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68492e3c6a674ea251327fd0130267454973052cb7bb0fc89f1fc7df5f502d1`  
		Last Modified: Thu, 05 Nov 2026 16:11:01 GMT  
		Size: 72.3 MB (72333707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e18b50a26c84593a17e75b913a2f9f53f4a9589b5be0af40394e9b4548f930`  
		Last Modified: Thu, 05 Nov 2026 16:10:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cced84c14f7e993df736ee491e4f4040651fbabfc6fd81b328e3465ae934955`  
		Last Modified: Tue, 10 Nov 2026 02:47:33 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3d435597376f7ab5d9fd8f8162f883496788f385eddbe77872159817f6a33603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc2e2a22c4364d1e17e17a8cf7837612ac343227239c80d3980004b3cf43fc4a`

```dockerfile
```

-	Layers:
	-	`sha256:09a891aded5da3af9bbc2725b225e3ae19b921be278b68d60a51754fd951e179`  
		Last Modified: Thu, 12 Nov 2026 08:41:23 GMT  
		Size: 5.1 MB (5072818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06b3fb4172a22927583924736ed96d02434939e9f4f56f39e42b09a06a3c7526`  
		Last Modified: Thu, 12 Nov 2026 08:41:23 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
