## `clojure:temurin-25-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:f6d7475c836c99939feb9e172a3dd16a8461ed77f8fb1868c0529afa70e65a55
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

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f6d07cb0784714e5e386755215f0b22e4cb1fd17c742bb2ef3a3807b62032c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187456303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98aca8af844c2ed5bcbcfdebd66d6984730d259b8ef066be13f11cabe9bf2995`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:35:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:35:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:35:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:35:14 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:35:14 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:35:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:35:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:35:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:35:28 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:35:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb4a2760ee9f7531ef8fc344789fbcd1e92c68ce4452a00ed1c075fda2b10ea`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 92.6 MB (92574571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b93df4b18c3ddf5adaf0089477cc4729e0eff55518745e902e12a4ea1c4d334`  
		Last Modified: Thu, 16 Jul 2026 01:35:49 GMT  
		Size: 66.6 MB (66648048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be657a48738620374a6dc58023fff417da7ae68c6e70b3f7260a85393f5aefb`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34d8c11d98cb6dae2fe7e0cf40ea678249f01390d1663b6500be6f7b641f0abe`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3de1af9ea957cdd7e444237c94b81f5b6e3d47045658b758d8be25376eb5fc82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5098804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc52c454ea37ef0ad8061fac59ca5e5f5e7e2a47b4e4c495069b09c472ff4d5`

```dockerfile
```

-	Layers:
	-	`sha256:c1a342799712e41253b7c9686c722b9a31d38d374e6d1ca13cc5c4e65c6f8910`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 5.1 MB (5082125 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb063e33a9c629443b84fe218953a3b4a3045a202863e7816b3e8a99e63f3e16`  
		Last Modified: Thu, 16 Jul 2026 01:35:46 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:992016793505f3f6dc4901d8c0c8009cd51abb9b9e5119731f247a479c975661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186298528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1231e39b2d0d5b3a5496220631de830ce46ac4902ad628c7821cb72535755fc`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:30:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:30:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:30:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:30:57 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:30:57 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:31:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:31:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:31:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:31:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:31:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186d659b9d7c2f42a1149de53fc86dc9713b9b97c747a9d6c9189f70d98aaefc`  
		Last Modified: Thu, 16 Jul 2026 01:31:32 GMT  
		Size: 91.5 MB (91542258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed26e2e389dff8b686809956d6d2b7e613cda99aecff5856a92bb954c92d370`  
		Last Modified: Thu, 16 Jul 2026 01:31:32 GMT  
		Size: 66.6 MB (66637975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e9e29a07bded3845903f62a2573950080f71734a0da694063de82ec82954bd`  
		Last Modified: Thu, 16 Jul 2026 01:31:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2ba4be9d752b814f8cd96f8d71da77eca0b7354041a996ab2a9ec331bc9a76`  
		Last Modified: Thu, 16 Jul 2026 01:31:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cc7a116ea80a35457b093ab2bc3221e75b5f0d6e8e7484038a901528a929e836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b19a87bb3a7beaa1e430498a96d426c95d2650162851a9a9ef49125eb4c0cbf0`

```dockerfile
```

-	Layers:
	-	`sha256:1fd836c4bab219869581ec4d44a3017714a2afbb0777e923ec638338897d2286`  
		Last Modified: Thu, 16 Jul 2026 01:31:29 GMT  
		Size: 5.1 MB (5087907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1ce382852dd12eaff79e4b4f59d1e1c6f7c968359ff9498b60e16e5fa9e03ac`  
		Last Modified: Thu, 16 Jul 2026 01:31:28 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:342e389da75010aaf065fbd79db73ab67427edf5b6c7557fe23b64175acf9205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196468974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c027fa2daa045c34ca6211566911dc6c9fdb4d85a24952479cfd6d4113771dfe`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:59:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:59:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:59:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:59:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 02:59:17 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:05:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 03:05:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 03:05:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:05:30 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:05:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae72c6d5ece1c3efec4310c7ed616d6b6592829012d6783b6a604ce01a1e80d`  
		Last Modified: Thu, 16 Jul 2026 03:02:30 GMT  
		Size: 91.9 MB (91914003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f0b32aff3374c486645a6c145ac72db1775e2fb5fcdf74232005dc51937a90`  
		Last Modified: Thu, 16 Jul 2026 03:06:05 GMT  
		Size: 72.5 MB (72477517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e9b1a039e40b52b6fa045ce52e3148c20e55fce9253e6ad6922ce8cd865611f`  
		Last Modified: Thu, 16 Jul 2026 03:06:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f68aa0d780996ec45aa4a22f8ecf934079efd656ef4f14419752ac54a49c2285`  
		Last Modified: Thu, 16 Jul 2026 03:06:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fefefad6b12b829e2b0ebc5c75e5443faefa6876dc24de6fcd7cdc1e29a3c426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5087346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38810fc4dfd8283577699a6f745ca81c5debeba55d19ad4c60187dc7e153fa00`

```dockerfile
```

-	Layers:
	-	`sha256:c8401932dd627645f6cc492cc5c77cc66c1f243b972531d72d9386e2ff069ed4`  
		Last Modified: Thu, 16 Jul 2026 03:06:03 GMT  
		Size: 5.1 MB (5070607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d051bd14f81bb1bf201fa4a96349be8c1ce957ce7e17a9d567ada34b05c4072`  
		Last Modified: Thu, 16 Jul 2026 03:06:03 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:f3e622bb81bbbd5b72513aa6e4ae30c56a04fd2a9db83b3836286bb6fa1c9973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180758743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6dc614e5729d4f1963c1412abed795763f8d9f238f9bc505012488d5c6f1c2e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:53:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:53:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:53:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:53:09 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:53:09 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:54:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:54:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:54:59 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:54:59 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:54:59 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba7d532459f3ef1805877980c86b75af0276b737ee196cb99240497e32f4d72`  
		Last Modified: Thu, 16 Jul 2026 01:54:52 GMT  
		Size: 88.4 MB (88420319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1b4c1e4b7fd159255865643def5aee35a7607fd45e0d22b73f59e62bb1b835`  
		Last Modified: Thu, 16 Jul 2026 01:55:21 GMT  
		Size: 65.4 MB (65449113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a04c8d97b13b2a6e5e9f05bbf642487f0f50d0546a3cc1ea3da64a3e77ab27`  
		Last Modified: Thu, 16 Jul 2026 01:55:20 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8cc4849389a99571d54cd69fa288060a87b7a46c81fced61eca21ab770ae5c`  
		Last Modified: Thu, 16 Jul 2026 01:55:20 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:b93f391b3d86c5519264ca32a078f6fe380e671e051d138f590e36919613815b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5074687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9cee4c8333cb46bfac1855eee870741ce7c2aa47f31a99152f03ddcdc0a479`

```dockerfile
```

-	Layers:
	-	`sha256:99a4c3a7eead1022d0dcc3027e311dfc958dd5bf900168f09821b81d0abfe8f8`  
		Last Modified: Thu, 16 Jul 2026 01:55:20 GMT  
		Size: 5.1 MB (5058008 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0576e0f89d3fb79735d7f62c44a3dd0d3f2b4d3e60aacab8bb55615af5f2847c`  
		Last Modified: Thu, 16 Jul 2026 01:55:20 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json
