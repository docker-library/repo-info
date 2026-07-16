## `clojure:temurin-8-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:82ccae771e90cf2311e37a1a62b26c814566dc5c4d42b75b048f2f288ff73329
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a746b22f3970855b082132ddc425d346cf275e68432c027560caca1e87c7bcc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141559493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ab1ce5d42b0bc75dfb02b562d41029c89aa3776dc2765b095b3b1ec7a14cbb5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:27:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:27:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:27:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:27:05 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:27:05 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:27:18 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:27:18 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:27:18 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1641163ce8eb7e330ecaa1268dff3c9c4ed5d97155088d5125c130c65a0d2e7c`  
		Last Modified: Thu, 16 Jul 2026 01:27:34 GMT  
		Size: 55.2 MB (55198724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3001cd822a86bae80fbaac2cba4782516a23e3fc898fa05f6f8c33733735c9d6`  
		Last Modified: Thu, 16 Jul 2026 01:27:34 GMT  
		Size: 56.1 MB (56100372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6e9cb12ccc2f74ac7a8448469899562872dd37f68fef96765e87382968124a`  
		Last Modified: Thu, 16 Jul 2026 01:27:32 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:871ea55d8bebdc14392213926bb5171364d1bd54a25f1aed27cb0562a9c9193a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95369c79551d5a2854c4ff71ac542e386cb07144da20cab7b1934c46b9e1ce16`

```dockerfile
```

-	Layers:
	-	`sha256:b43d7bb8e91989b8dea036c7571ef82ed480b2df92617cad9d629f533eba7580`  
		Last Modified: Thu, 16 Jul 2026 01:27:32 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0b4b86cd6682ad4313daa845b35236d78f0e729086e21edb82f205ecee33ae0`  
		Last Modified: Thu, 16 Jul 2026 01:27:32 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:b7b2f429937b0283e8b9ed391f8c20a836bfd5431180a360941f9d0e37dd48c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139290489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4736a171fc6d2175e0b8dab764b441358df3a02a7c0b0b24ba1c21f078f79fd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Thu, 16 Jul 2026 01:19:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:19:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:19:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:19:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:19:47 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:20:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:20:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:20:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba4194111bb1dc714d90895bf51e699b92e620287adb579906b9bd8b2876253`  
		Last Modified: Thu, 16 Jul 2026 01:20:16 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233b601d84d2d4d7c389949472fffeaa2322dbf81303895d2c0a40320113b2c7`  
		Last Modified: Thu, 16 Jul 2026 01:20:16 GMT  
		Size: 56.3 MB (56267935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022a50489dd2d2753133ebcdb0a8193d23bd8ed9e4ebc6f82f2ef26a0795e2ae`  
		Last Modified: Thu, 16 Jul 2026 01:20:13 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a863327df19cb2868e519e5d815163d3dbacac1dec886c21a0727a527ea6201c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c617c1239a5788bc14f8b2321908b3f158d06b144dfb8f2d70917fe7a064abe8`

```dockerfile
```

-	Layers:
	-	`sha256:1d5b180e0532ecf642a7c3cdc85071aa2534f338b49842d1ae9545c94a6518fc`  
		Last Modified: Thu, 16 Jul 2026 01:20:14 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36bc1fd47ffbb46f0b8d6a21629989c765779c32fb5e129da78ad4acca99cfd0`  
		Last Modified: Thu, 16 Jul 2026 01:20:13 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
