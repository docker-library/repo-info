## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:343c362706e2bb373a71b75ab0cd6b3c9b4ae451b469acc645f3c2b7ed6cd06a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:cad9bc7782d51c978cda4cf178018e028f5626716a353c90c8ddd9c6e4675348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150089342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6dbffe0537d694978665c291951230a8bb80bbbcdaafc5e7fb8f0b8a2c4731`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:53:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:53:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:53:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:53:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:53:14 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:53:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:53:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:53:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c936a01c1bfe8aa8fa3de9162ad0a249aba28fded41ec7e17304595807986c`  
		Last Modified: Wed, 29 Jul 2026 17:53:46 GMT  
		Size: 55.2 MB (55198722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6075a80fdc582f8acd4459854e092ae5d0d64fe9bb208b8e29f9d6c343a68964`  
		Last Modified: Wed, 29 Jul 2026 17:53:46 GMT  
		Size: 66.7 MB (66657332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b8e250d210a00e09cc31c305a535d61bfea54d1a0032e15a1e70f7a8e835db`  
		Last Modified: Wed, 29 Jul 2026 17:53:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:67de0db0637dfac78a534afb39938258cedbd91f3863d7449e3acb197dc2607f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43b18fb478556e154f4e71179235ba35faadf26bf3b741a4f95d1fe48302bdb1`

```dockerfile
```

-	Layers:
	-	`sha256:d5ec5d74a7ed385425bdd455b0ec837410d065f982d2c15f4a301c74bfbe6ade`  
		Last Modified: Wed, 29 Jul 2026 17:53:44 GMT  
		Size: 5.2 MB (5234395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3f022986b0794a7ed2be89b4414154d705f18670873e9ab3ae23d398a40448a`  
		Last Modified: Wed, 29 Jul 2026 17:53:43 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cb7331e00bf53edf3059f232f11fc4a5ab9c5d064914e1cdfa656151fd12d514
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.0 MB (149039193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a387fe0f0b65fd638c36ac7870e863c40fed62cba975d3a53ce06fd25d40a8`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:01:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:01:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:01:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:01:22 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:01:22 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:01:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:01:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:01:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd857f80b75e0d62195188a7cacd6f3e590fdf60ff18287339920e17374b7b52`  
		Last Modified: Wed, 29 Jul 2026 18:01:54 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38a5ab68a00121d32f72cd61255b4cbb2404f8c420563f7bf5ef14d0bc21dc6`  
		Last Modified: Wed, 29 Jul 2026 18:01:54 GMT  
		Size: 66.6 MB (66648364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc4ab05f3d90c1b627e80b01472e56b3c9e6bfeaf149cc9549df098f13b06a4`  
		Last Modified: Wed, 29 Jul 2026 18:01:52 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a487fed7ced5aa4e2464b1d860ec07eaf9636c4b094e747462223f4c1a44e345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5255376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8288393e1a667bd1536a7e05be459105d8b27c5f148097171f39a0620941a0`

```dockerfile
```

-	Layers:
	-	`sha256:1c88e36ea2f7a6cb13e9861bc773d135828ba2620f5d25775150f2dd4eec1622`  
		Last Modified: Wed, 29 Jul 2026 18:01:52 GMT  
		Size: 5.2 MB (5240856 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a22ba8a134eb0f7aee6a2e175f1690fc0cb2af4f42ded532568838a098392234`  
		Last Modified: Wed, 29 Jul 2026 18:01:51 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:87824431039fcaf6c399c8842dce2af215c88c9b3dac85b7644a9c854edba468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.2 MB (157233120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2deb9ad3bd6e2db4939ce1dbbc3341912315f570f4d3d72830e08240c8e558a`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:51:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:51:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:51:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:51:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:51:31 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:52:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:52:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:52:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f20e1892cc3f6b2ebd77b5ddd12db590714b3026b514342edd1a19af073d81e`  
		Last Modified: Wed, 29 Jul 2026 17:52:47 GMT  
		Size: 52.7 MB (52669122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f408a3899ec55ab35aedf99c5ba1ecc9ddc28946f0ec2fa2adc6b6e8d9db79d4`  
		Last Modified: Wed, 29 Jul 2026 17:52:48 GMT  
		Size: 72.5 MB (72486936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9450d0c5a15f3d108953d8323cdd4d5196f8789461097e2ff83690b9ba5c6d5`  
		Last Modified: Wed, 29 Jul 2026 17:52:45 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c441c10c7be7f959fbab77ef3425270808bdbb33dd77a45a1e5bfd52c4100d67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8986630a737872a94f147531e9eb49eefe85482fbfa6f5d00887910d3c1254a`

```dockerfile
```

-	Layers:
	-	`sha256:e517520cb8f44f65109a98d7c4df9d7f065752d7e6e8c336f0208cfaf72c5849`  
		Last Modified: Wed, 29 Jul 2026 17:52:45 GMT  
		Size: 5.2 MB (5240148 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d91725706db111370c9e3cb849b175ada45a050a8f857ccb65a60389a3c39d7`  
		Last Modified: Wed, 29 Jul 2026 17:52:45 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
