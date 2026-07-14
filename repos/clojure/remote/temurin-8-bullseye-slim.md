## `clojure:temurin-8-bullseye-slim`

```console
$ docker pull clojure@sha256:43a1d5fdcb1d46886c4ceb2cbc1159892b3a6f9e503219d4eb7b232e249928f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e07c50f5f815debd2cce3a01b2c19703a3c58eb94cd140e7f7cad7e32724e6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.6 MB (141559384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c7f7083120a135232ca86660b22566284ed323342020adfdd098a7af9e81feb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:15:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:39 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:15:39 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:15:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48f7c7cd95d4810df7a59ed0bf1db0934136178bb713fd3b45a59c3c9cec2649`  
		Last Modified: Tue, 14 Jul 2026 02:16:08 GMT  
		Size: 55.2 MB (55198716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a02ea9a356bb8bc0a6de3727f3fc30b05306852b4d2a77c8851233513a7af2`  
		Last Modified: Tue, 14 Jul 2026 02:16:08 GMT  
		Size: 56.1 MB (56100271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a1c6ecceec4ed2dcd2217278896849815e4f70c23920f4d8d90d6bf0950350`  
		Last Modified: Tue, 14 Jul 2026 02:16:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:52404b2e38f6cb8710e0ca542163413ca61cb6afb341fe0d6b60ab4a3dd9accf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5452610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fb9342b91522a2182f35865b247cb3503c8a05ba435304b4569b6b785b11e7`

```dockerfile
```

-	Layers:
	-	`sha256:07067ad6cd53f5e2380e7a442a4fae89bf95004a8b815cd343c4a8775024c12d`  
		Last Modified: Tue, 14 Jul 2026 02:16:06 GMT  
		Size: 5.4 MB (5438209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:195f27269dd189a2463fb44a3dffa2a937a4926db8de651e1b639ef45bfc3e91`  
		Last Modified: Tue, 14 Jul 2026 02:16:05 GMT  
		Size: 14.4 KB (14401 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:460423b4868eb0fb1b79ce76bdb59baba143b233c633da16bd55e7b572994d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.3 MB (139290074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ccf6afbce2cedc361144886366817f19cb5f89de0ac6999c5cf631fa6db8e72`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:22:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:44 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:44 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5798e3761edfb23453e0921c326e873aaab9e9615d5643fd8b5734b5111c983e`  
		Last Modified: Tue, 14 Jul 2026 02:23:14 GMT  
		Size: 54.3 MB (54272904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2cdd623ad25b80869e1608f74c07c466a563fcc971e708263f4a35b11dcb86d`  
		Last Modified: Tue, 14 Jul 2026 02:23:14 GMT  
		Size: 56.3 MB (56267541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a627746460f06f85122e5be447fa20b00293468fe3ee1b28d5ad87409f61c2`  
		Last Modified: Tue, 14 Jul 2026 02:23:12 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:584025aea14a5a99e0b11ec22aa6f0a8bc8f7375a12950c855dc5306dc87f8e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844eb208d26d66e04bc188df07abf471d1b3f3a65462c027ec8518d0606633df`

```dockerfile
```

-	Layers:
	-	`sha256:5a128ad9d9daf38aaf41d52eb7a77d50f1ad8014f64539f1db1230e27f6d193a`  
		Last Modified: Tue, 14 Jul 2026 02:23:12 GMT  
		Size: 5.4 MB (5444641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f5058560e45fd03780ec2a08d367d628cae223789dee4e4e60ff5dfffb56a34`  
		Last Modified: Tue, 14 Jul 2026 02:23:12 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json
