## `clojure:temurin-21-bookworm`

```console
$ docker pull clojure@sha256:cef34456c6ea33f2e7100362e887541678c63e4bb2eeba359666d35bbd60f99f
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

### `clojure:temurin-21-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ba891ab352c0c127cbc3892c777b2e92a4f242997d1ae6fac9367e807cb20adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284809968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21a3292de87fa5e61bee953e03a106f7d977193eec6f844d1ec4095bed60a42e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 17:56:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:26 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:26 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84cb1088a746fae74d6143763f6212ffac2fb649eb7f49ac602f727551547f3b`  
		Last Modified: Wed, 29 Jul 2026 17:57:06 GMT  
		Size: 158.2 MB (158166937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a976f77b324817d7fb93c5e85cb11030f4d02b295275022c601c7e3ce1618e`  
		Last Modified: Wed, 29 Jul 2026 17:57:03 GMT  
		Size: 78.1 MB (78144588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ec2a0211d8989532d1d15ab6a82c066e5938d145e52cc888d000bef9dd28f2`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963567176010257e30994ef8fffddc9a533cb7a1327e706ce81bf29f1e768ca5`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:60b7c761361a7df34e8423857579ce9979eb65154b839c15775acb542e15dd91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada92becd9307d2870b889fba212c8d057364b2efe744234cae98e68d123af26`

```dockerfile
```

-	Layers:
	-	`sha256:ae683f729b5a08b09933c0dd09416586ab6ea1f086be724422e21ab2671e6977`  
		Last Modified: Wed, 29 Jul 2026 17:57:00 GMT  
		Size: 7.4 MB (7378706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d31da43acdf3998a7d144604d06d5a01929f319a5eeda2cffdfecd951350fa9a`  
		Last Modified: Wed, 29 Jul 2026 17:56:59 GMT  
		Size: 16.6 KB (16616 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cb4edc6650be1e24c14eaf3a4ee6ec9aa4cd7b7f115ada46ed23fc644ce10c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.0 MB (282975098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c69bda459aa03e96e56da8854b75843720b06585bd46c7f7c1a3747622dd6d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:04:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:59 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:05:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:05:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:05:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:05:14 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:05:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4562159d91c73840e926d624f8cd6738d287072a90c6dfb8af68fbab568a57d4`  
		Last Modified: Wed, 29 Jul 2026 18:05:38 GMT  
		Size: 156.5 MB (156461248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6758933953d58fa2449efb8f795cbbfb177d313135133f8300bc43175c70fa7`  
		Last Modified: Wed, 29 Jul 2026 18:05:37 GMT  
		Size: 78.1 MB (78129121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0489b421287d9538920919ed73524fcfc5f5a4fe221c8de8df0967b5bdd0f23e`  
		Last Modified: Wed, 29 Jul 2026 18:05:34 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6829f470670afab9e33af1f8f03d7dc31f0b0eba5c34ad6abdeedec059e058`  
		Last Modified: Wed, 29 Jul 2026 18:05:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:063c142ff4c82ba1240d02ac8545a712b387ca1e0d9c4809f5198aff74125ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7401251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e59530b531df290a95b4cd77635a396304f5cefebb080d16710f7f49e07c27`

```dockerfile
```

-	Layers:
	-	`sha256:f9c2624e384e97a2730ba25335fbf1193a46bac10ec43976c40edc3a19e12c8f`  
		Last Modified: Wed, 29 Jul 2026 18:05:34 GMT  
		Size: 7.4 MB (7384493 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:924531a0927641642206503dc5d80d0aaa68e038e543ac34d7ed935fa716bc82`  
		Last Modified: Wed, 29 Jul 2026 18:05:34 GMT  
		Size: 16.8 KB (16758 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ae8f072f24dac515051070f8b6106ae151105ae4189c4ce3471d85d0cf1456d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294659661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e6040472fc0bc7cae304d3886c1e55582fa4145169746ac951c4f74b0bddc0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:06:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:07 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:48 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b727e2a5b229d907a08b32277beae55778f2a6ff868bb5df198e48de10ddfd9`  
		Last Modified: Wed, 29 Jul 2026 18:07:32 GMT  
		Size: 158.3 MB (158343201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c1d40a1e9e36156aff5a3931af2e4daa3a57f49023b4e7362dbf6b03129550`  
		Last Modified: Wed, 29 Jul 2026 18:07:31 GMT  
		Size: 84.0 MB (83973585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b300dcd7a5c011a6b9dc4f8fe87e9c7707a741d4f6de334f6e38b4f2f9cc8f4`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f9b69661504057de186d22515f4a145e2f1ac112340111e003ce488b372d3a`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e19e4955731dcde0afee783c94568cba2c5a2e02ea0ba618596e2ec414e200d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bea788e6df9abf3ec7d491f2f6b0f4fa96f933054b4aa0368048de64a2acab95`

```dockerfile
```

-	Layers:
	-	`sha256:4f5482ad24bce76f74d3189f5255fadb18481bcb6c55adeee941d1a0d9cc7178`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 7.4 MB (7383934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c807289a869ac853a9b5a14983b16c0512963c2c0452a468bc120dfb7da49540`  
		Last Modified: Wed, 29 Jul 2026 18:07:27 GMT  
		Size: 16.7 KB (16675 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:c2a3b44e868d73b0e08be7ad30b30417fc7cd5780a7ad27c56e407eb155017fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271482265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eef225cd57d8a1255e058c715984f23d8425543b0cd3ea2026079883b40ef6ab`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Wed, 29 Jul 2026 18:20:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:20:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:20:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:20:48 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:20:48 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:21:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:21:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:21:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:21:10 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:21:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d57bf73fa0681d1198ceda66dc00def500a41508b14e557318819ad6b87ebe7`  
		Last Modified: Wed, 29 Jul 2026 18:21:47 GMT  
		Size: 147.4 MB (147388353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a7b8ad160c1fe6abcfa8fd5b17b7287688c9f9c3ae7c420434a98e0e67e5e7`  
		Last Modified: Wed, 29 Jul 2026 18:21:46 GMT  
		Size: 76.9 MB (76935589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf566fca3d3a1659c06a1eda0f2dd7bc3c3337a175470c6c35de301e650d8f9e`  
		Last Modified: Wed, 29 Jul 2026 18:21:43 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd79e78e470c2e8bf1ae0f200f7bb96edafb0a6ba8b4597443ab42ded137ef28`  
		Last Modified: Wed, 29 Jul 2026 18:21:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:12c71f34dbce0f30d7e27e477798fa4a2c24a289ee0b02e4ea49768e6a5e5f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0136894f711646ee0b75a89219f1a57f861c38c85519463046b0c664137ee3e1`

```dockerfile
```

-	Layers:
	-	`sha256:d6262aa2223f3f4df7bcfd298b46918904bdbc7eb49fc1a5e8627535bec1852a`  
		Last Modified: Wed, 29 Jul 2026 18:21:43 GMT  
		Size: 7.4 MB (7370025 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01f5ac569b874505a3406d68192f3c2f3727f8a0915dd00f4a8b561324e135b6`  
		Last Modified: Wed, 29 Jul 2026 18:21:43 GMT  
		Size: 16.6 KB (16615 bytes)  
		MIME: application/vnd.in-toto+json
