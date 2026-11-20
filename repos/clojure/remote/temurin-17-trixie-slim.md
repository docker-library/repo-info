## `clojure:temurin-17-trixie-slim`

```console
$ docker pull clojure@sha256:c8843bd14e8a1fc08fae3c8a2aa353b829abbf35ead2922a0f3c4636c4fe688a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:3022044b09b69617a0333f14266f4aabb8f10ed883960f2d6cca48b482718102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.9 MB (244933866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89beee27c5977668720b23ec235dfcbb09e1160328aaa93f1bd4db5415a4eb2d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:08:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:08:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:08:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:08:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:08:05 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:08:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:08:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:08:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:08:22 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:08:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e8d0ae433fd3eef28ef11f6e441713edd4e90d2fb9c0c1b94a067d0957bc4f0`  
		Last Modified: Thu, 19 Nov 2026 22:08:44 GMT  
		Size: 146.1 MB (146086199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a99d7da6ada7801c559a0b53175c58ebbaab449873f470f3cd135fa532836ee2`  
		Last Modified: Thu, 19 Nov 2026 22:08:43 GMT  
		Size: 69.0 MB (68989986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46ae30a9ae790c8cc8084a78a182b5e6d25885a957ced02bec60720efface04b`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba14802ffa634d3a2f6f0245474b63a8aad581c3f22d9ac3f054ed5d8debc01`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:731bc1e74b2e212ff5615af01310357de4622705670abfc8b5ad419dba892214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0176621bb5c094c5a97e9b0535ec8af2eeda9bdf119b9a4e39ce79bda7888cc`

```dockerfile
```

-	Layers:
	-	`sha256:e2b57eb2a911221ce491852bbef8db69d50fe0a652ae3b31349e34a09881b6dd`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 5.3 MB (5262059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6883f4ee09a772235982810884499ae63720d2ca111f82bfa9567a9c8b8851bb`  
		Last Modified: Thu, 19 Nov 2026 22:08:40 GMT  
		Size: 16.0 KB (15965 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e45702ccb6f875ee8014efdd3df8143f02b4b44b322687bfeb83ab119e36b4c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.0 MB (243978507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3351fe9f797923098beb1a361f0a46e7c32113287e70def40bb2c63d65ad5dd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:07:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:19 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:19 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:37 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f9da5ec857a5644fbec76ae0ecee81aa75fcc9e586318174976d3fb5a71d02`  
		Last Modified: Thu, 19 Nov 2026 22:07:59 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a47cfea35d0fc5087a458f0548ef30239ae52026f2b487e6566a84b453de22`  
		Last Modified: Thu, 19 Nov 2026 22:07:57 GMT  
		Size: 68.8 MB (68805762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f192b5ff41db13b4a7771e2ab0f64bc1d70f66c27ad9aec10bea0134c816092f`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926cf2542a88a1ac99c8f47bd89e3b0d57b3f5a8aac2c7767c3031a5292d090b`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85662273d4af8e1f880e6ef36bc712fac8a4baae6de0bd7ccd376243ddc3a715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e819742c38e983b45f19ba1dbc756875c29ce2538133eca0f0e9c840dd4655b`

```dockerfile
```

-	Layers:
	-	`sha256:4b016da2b7a410905cba594452adfdcbbdc3ca1175300a4cbb34f6aabd7b3626`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 5.3 MB (5267820 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7aff75bf035e8019d8ba17cb15ba3ad9ab83db989e8da8cbf1ac4f16ba52406`  
		Last Modified: Thu, 19 Nov 2026 22:07:55 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:239096dba5851d15491a703a4b77a7d4bbf822b02856ac5a4c4f17422d51c7cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252947340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7ccd7a0b40e080265706f5d5d03767ac3ffd9ad7e7ac97fcc051aa73372148`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 08:13:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:13:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:13:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:13:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 08:13:28 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:24:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:24:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:24:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:24:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:24:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beea9cbb2d380277e6a8c6fc2fa108cc20798179bbc6cfe404f3bf23b52f54c7`  
		Last Modified: Thu, 12 Nov 2026 08:18:57 GMT  
		Size: 144.9 MB (144859692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d4df9c7fe59f440f904b1e60212ddf3dd5f1504980c1b45ab8238f854454c0`  
		Last Modified: Thu, 12 Nov 2026 08:25:41 GMT  
		Size: 74.4 MB (74418458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e97e5e537c7b24ac051389d42bdf601516a241c91dfad95ceecb2d17a4df97b3`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9176bf89b0954dbe576ee4e50f5fe490c77a371a324e0aa8d35e314f0c510046`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f3affd707c556e8ae73cbe9e9a4d048afbb70912fb4ba745e534d7baa76bea30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5281196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e95cf51bcc5f5ce4cdc928088512955d2e9c7a9ab8232ac9c77ba6a7ec3e06`

```dockerfile
```

-	Layers:
	-	`sha256:c9928aaa9a2320aacecb252827a571a5bc3f2ff42d8950ffb9de93e99a7a000b`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 5.3 MB (5265182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:476586f7d44c7ad558ad1c95367173046d9bcc2409924ec4217aa6bde8d89fce`  
		Last Modified: Thu, 12 Nov 2026 08:25:39 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
