## `clojure:temurin-8-bookworm`

```console
$ docker pull clojure@sha256:64245d389e209cc3bf9d7e280fb61d614d05c2c3f25d43fe38d8a5cc8e1aa23f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:851d315f16473fc0b72a159f3ab60c527308fabf3627307faafdcac359336c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181835820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb20ebf262e75464c6807d5d32dbb76e7a270e2c18b1c4675f3f72313a0d4725`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:43:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:43:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:43:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:43:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:43:58 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:44:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:44:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:44:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:450a372254d9368844495c9de57510bf1fdaf7ea2ffc33e327ca8b07d46cfb7c`  
		Last Modified: Wed, 09 Sep 2026 03:44:32 GMT  
		Size: 55.2 MB (55164390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6bdaca1bb589ef370f0db8c662528ba15654cce9e766bbf311791085b68be30`  
		Last Modified: Wed, 09 Sep 2026 03:44:32 GMT  
		Size: 78.2 MB (78173423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfc13da32c8d7946593cfe7a3794cf60fc0dfb520c787d7833a4c9217103f10`  
		Last Modified: Wed, 09 Sep 2026 03:44:30 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f35376591a1e3285d1ba08a2726ce623868af6204dcd73988bfa410149313f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d75a6ddabd6b9edcfd74b85533a1d92530227496a555eb71f115bb019304ae`

```dockerfile
```

-	Layers:
	-	`sha256:c8e46cfe2bb1f83d351c960ab6236e3475fb717bbb783a5e0b1ad9d891dc9089`  
		Last Modified: Wed, 09 Sep 2026 03:44:30 GMT  
		Size: 7.5 MB (7500958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b771c53acd1e48ee3e411e3496c5d654c18729dd593cf63e597601d85b3f4714`  
		Last Modified: Wed, 09 Sep 2026 03:44:30 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8590de4dec95956a984112b44172b04cba341c03a26ef4ee1906616da9061799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180821630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:217baf7adae6a3be16cd8681a4ff0902b512f5cba5c5140610974285fc478407`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 09 Sep 2026 03:54:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 03:54:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 09 Sep 2026 03:54:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:54:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 09 Sep 2026 03:54:59 GMT
WORKDIR /tmp
# Wed, 09 Sep 2026 03:55:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 09 Sep 2026 03:55:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 09 Sep 2026 03:55:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c457148a5844ac8f6b479737713e0f27c997aacfae1a9f8e2d30796427fc37f9`  
		Last Modified: Wed, 09 Sep 2026 03:55:34 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a758edb1c49c439f947e4004fc09740d49e9cd9b571f34974fa89769009a8f`  
		Last Modified: Wed, 09 Sep 2026 03:55:35 GMT  
		Size: 78.2 MB (78174595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671f02a0cd80f61eda33b2412cdb8b1550195776d7b8f470c0feb232aa6a9500`  
		Last Modified: Wed, 09 Sep 2026 03:55:32 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f55f4d82285153c510d5e69b99c33931ce35e65813f4113026abeede5d4235da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b593a1b6c654b54f896d3c62725bd03bb3d96e5e80e4e173ffd5c4d74fe3951a`

```dockerfile
```

-	Layers:
	-	`sha256:5daa7b7d2a3d8cd3eb8d7e7a79ff81d730558956ac801ff2a674c41e71fdeac7`  
		Last Modified: Wed, 09 Sep 2026 03:55:32 GMT  
		Size: 7.5 MB (7507421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ae5d2ee2a10385da33a9f68a5cc128cdd489e3fd74853feae2741b6b796548f`  
		Last Modified: Wed, 09 Sep 2026 03:55:31 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:2f8fd17fd716787b56a0a98a39683e277bc3552fb0a5c0f11d99ca45e20db235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (188997475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6689ddf577a535b225085c83d874463ac2719fc5c9398ebd6138fcde4bec1142`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Thu, 03 Sep 2026 23:58:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 03 Sep 2026 23:58:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 03 Sep 2026 23:58:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 03 Sep 2026 23:58:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 03 Sep 2026 23:58:52 GMT
WORKDIR /tmp
# Thu, 03 Sep 2026 23:59:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 03 Sep 2026 23:59:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 03 Sep 2026 23:59:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0c2d5205fc55d3b835077ee231788be3c19f5d98cf670eb9556f1b27555247`  
		Last Modified: Fri, 04 Sep 2026 00:00:47 GMT  
		Size: 52.7 MB (52670663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3dba96c78115f9fb8cc0107a6eb8d1f6572825b20a116215e1848c99aa6dd6`  
		Last Modified: Fri, 04 Sep 2026 00:00:48 GMT  
		Size: 84.0 MB (83984402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb785d30ae761043b678af5c143058522101f5c3a8e258a5fb896d867fb58576`  
		Last Modified: Fri, 04 Sep 2026 00:00:45 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:f2dd125ceaf4376be0d6b7dcb728211672c561b002873fd843711d2a4719b550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2552fa831a897a00f036cac4003ddf420299d98ece82feb6be2a0c91383fe12a`

```dockerfile
```

-	Layers:
	-	`sha256:622fa826e38e0ec1fdda3c483266a269e5f665f7a289d252d429cf624a4c2714`  
		Last Modified: Wed, 09 Sep 2026 10:28:46 GMT  
		Size: 7.5 MB (7507544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4812afe9ef321e8b7fea6f05d85f30707dd6a977bf44681babe6d66dbcaf07a`  
		Last Modified: Wed, 09 Sep 2026 10:28:45 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
