## `clojure:temurin-27-bookworm-slim`

```console
$ docker pull clojure@sha256:704712aa09401b686fa2ced777e40eb0a9bdec0bc966c487f94c536d59ece66e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:77d5e90c3f6eb7cfdb6c432e2af72a6443326e40be325cedcf1e34a222e57a30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188366020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cfe3c982820d155e58400ef0926f32d0dadcab9fb671a4b9312ef77236aa7e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:22:43 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:22:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:22:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:56 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c6ecbf488a85aa1e9fcbd3e228bfcbfd843bf492516c6114d975c886073aa6`  
		Last Modified: Wed, 21 Oct 2026 01:23:17 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3c0d854e9c45e0c987e2de57563b91ebfa07699c43073c8909356edde74083`  
		Last Modified: Wed, 21 Oct 2026 01:23:16 GMT  
		Size: 66.5 MB (66494505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1456299a10e3d2601e0abccceae65199462256d7f9c567c8375f855c7469f2df`  
		Last Modified: Wed, 21 Oct 2026 01:23:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035b545e3fa70b83fa0fe9080cbdde794f13ae8ccc353b33bbcee98547ac38ec`  
		Last Modified: Wed, 21 Oct 2026 01:23:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ef1367ed7fdbbd8e4dc64b060e4d722484d27a34c273d4debba2a0d83ac46839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a87e78844621a62f252da7e16b69a41695c9675d19911add90d599f105ccad1d`

```dockerfile
```

-	Layers:
	-	`sha256:a59cdcb4a99c7372418e3b6b536f1b60feccdc7da0f9fbe7a228f0b37228c6cd`  
		Last Modified: Wed, 21 Oct 2026 01:23:14 GMT  
		Size: 5.1 MB (5081637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:774a6edd5cd29391863b277136c045129811d31a799b12ec17565cd0383804ef`  
		Last Modified: Wed, 21 Oct 2026 01:23:13 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:49e36b7d5226f580551a0d345f0435be67a28a7d43ad2db123b36e949aa664f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187266960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ce4e055f015bd5f10ca74ef1a556c823681a6869f6d88596a883ec094110c8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:28:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:28:54 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:09 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:29:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:29:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:09 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c7b3cc3ec8e52ce044e116790b388d5b52a8b64a59a2aba410d9a4adfb1ba7`  
		Last Modified: Wed, 21 Oct 2026 01:29:30 GMT  
		Size: 92.6 MB (92633097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:269b909a2b176611c537c72629bde4dacf7f6e2970d67c1ea8a08790a09a9de1`  
		Last Modified: Wed, 21 Oct 2026 01:29:30 GMT  
		Size: 66.5 MB (66494399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf85a622b240e000f43e27ae722d3e57ca4427555ca1e765b64ef56ac8668be9`  
		Last Modified: Wed, 21 Oct 2026 01:29:27 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801ad6dfa759555f7ed6d6218aa94ec9c6a44497d099a9f953f904ed0475d121`  
		Last Modified: Wed, 21 Oct 2026 01:29:27 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:55477d59e6290d080dc822e2789d61e173ddfebeba6c1adf24fba460577c3abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b15c65de0a274e4d65f9b145ed1aaa60b43924fd16994c7c214e6ce24925064`

```dockerfile
```

-	Layers:
	-	`sha256:237cbf7a5242fa32cf4f4321e267439d3c66a805a564eaadab747730e057293c`  
		Last Modified: Wed, 21 Oct 2026 01:29:27 GMT  
		Size: 5.1 MB (5087395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1955ba9b2b278e3ed58e9a6d991bca4aeab163d7258b490c394e7991208cf746`  
		Last Modified: Wed, 21 Oct 2026 01:29:27 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:1a9de4662079a46835e21ff4328d3944aff175da4f3c4a00dc5eb73929ef24b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196683106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c085ce3495a90650a4197dab3e7c65749bcd1cee9c4e8080eacf810c6c408f08`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:17:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:17:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:17:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:17:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:17:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:27:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:27:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:27:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:27:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:27:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec518236d5067a8af035d0726c270d0334bcfe44ec1a32d3c23943fe275b8b7`  
		Last Modified: Wed, 21 Oct 2026 11:21:23 GMT  
		Size: 92.3 MB (92255784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538844d2a08a00077cdaf1d69ae2e303722d2cafa8839e2197ad9b15657de734`  
		Last Modified: Wed, 21 Oct 2026 11:27:52 GMT  
		Size: 72.3 MB (72333069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa54248efd748553476d08f72aa2482d3209dc5085785706cde14578c4c0e5d`  
		Last Modified: Wed, 21 Oct 2026 11:27:49 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f85068c0cadd0d623548e406113467a1988ac0efff67992b41e139ded6a1cc`  
		Last Modified: Wed, 21 Oct 2026 11:27:49 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0c8cc1a8e7a0095a77ada2a26b34098a6861310e81f5cdaa252332d10f207740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5086762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ce695cb04701cfba5da1a43d118cc6f5364589c48a0e49333648263c6a42e2`

```dockerfile
```

-	Layers:
	-	`sha256:60a7c172f1a5629516b8c7f5f4d5bc822305bd718be5bff851623294eb425b7f`  
		Last Modified: Wed, 21 Oct 2026 11:27:50 GMT  
		Size: 5.1 MB (5070731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f5c045ce3765484be908ece3183f199abd0017e9c65633064f2f85cbef65a45`  
		Last Modified: Wed, 21 Oct 2026 11:27:49 GMT  
		Size: 16.0 KB (16031 bytes)  
		MIME: application/vnd.in-toto+json
