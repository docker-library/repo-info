## `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim`

```console
$ docker pull clojure@sha256:440f41af70212bfe614f5d2e0b3bcd1ca5bd0b7bdff6a5abfa2a16ec39cea488
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

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:278e7766e856c2fb2aca471f046dab8f5f977359415356cb8b1c923b225f65a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240776853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652b459b4d88c33e060d1d45b01c7c5be952849b83f9f8f7817ca8a6c1d9a5fd`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:42 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:42 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:42 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1746531b396b936756d39ac427c6ee6075e01313b7d9573ff32f296a396bcce6`  
		Last Modified: Tue, 04 Aug 2026 02:49:17 GMT  
		Size: 145.9 MB (145886357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aced79aac14b39dc2af814ed392e5651b9c129eb015e328a5eb8ebf9a72a46d`  
		Last Modified: Tue, 04 Aug 2026 02:49:16 GMT  
		Size: 66.7 MB (66657207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9244490b5473b6480a11868a521af27ca789392c0c80c309f0c529364a901207`  
		Last Modified: Tue, 04 Aug 2026 02:49:13 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:53daa214b224b95131722f53c4441c1d7745e0726a4a9c3f616655da7ea6896d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5147972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75d68c91e8cbfa731a8bdd42506b6572f793f41943316b2d703381598831fd0`

```dockerfile
```

-	Layers:
	-	`sha256:516a2dd86f354262c1f0dfec20c087756ba85b8b163c8a320af69bbf5b5bdd19`  
		Last Modified: Tue, 04 Aug 2026 02:49:13 GMT  
		Size: 5.1 MB (5133551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92993c20b9f2ce93e5306dba7d8ef79b84d5bf8e6fd6a666662eef0266a715e5`  
		Last Modified: Tue, 04 Aug 2026 02:49:13 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e29b2dee0e4a9777d10ead5473f4dea35d1b0f3c1f4a8d0700acba266010dbec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.3 MB (237348547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189de9d7a440487ce0d3839e85bfa9c5d303d4a78ba54bae1196f7a2c3a1d453`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:48:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:41 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:41 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:55 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb1ffa18028714838db1a93b7a49946cc435c1a483878defa5c4178a5fa78fa`  
		Last Modified: Tue, 04 Aug 2026 02:49:18 GMT  
		Size: 142.6 MB (142582308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ae4d06364926633575c225fd2479c52b5dfa8f4469c2d3672f3905fa2c96d0`  
		Last Modified: Tue, 04 Aug 2026 02:49:17 GMT  
		Size: 66.6 MB (66648338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc1b07b54567607969fd75b6724b5a9e68c79446b3413cd19ba020663ce25fd`  
		Last Modified: Tue, 04 Aug 2026 02:49:14 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb9e13bdd2f64c809d4c8ce93ea5474e3a9f8b751a86e4b92df8f95ab1b90815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5154467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93af1be170b9cb156aa34c6bd43072d37ae54b204cd70a81b3e9cab485990839`

```dockerfile
```

-	Layers:
	-	`sha256:bd245e7016ad2ce8f9fc05ec26921ba19e81ff05dd3551cfc8808338d52f75b0`  
		Last Modified: Tue, 04 Aug 2026 02:49:14 GMT  
		Size: 5.1 MB (5139930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c124c0f90b77b06b97fe4c06a8788dafb5029d1c480fcad53d51806a17155d6d`  
		Last Modified: Tue, 04 Aug 2026 02:49:13 GMT  
		Size: 14.5 KB (14537 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5ea77749c31b6e3160d70333f2f1d1f6ba1649258048907dab28f0d4ebbd93ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237673528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98155b21d322cf1226d0a07a3614724e23b9a332928a5d9a1576795050e56ed0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 04:51:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 04:51:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 04:51:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 04:51:09 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 04:51:10 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 05:03:02 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 05:03:02 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 05:03:02 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e612fe9f24fea562cbdb3c63f471f93b466759f0727f3dc0b814e3056fc883ec`  
		Last Modified: Tue, 04 Aug 2026 04:54:48 GMT  
		Size: 133.1 MB (133109641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e291e9b89d133fa993c7432c505debe7811a02eb5474d19fb1b25d1d80fc2e`  
		Last Modified: Tue, 04 Aug 2026 05:03:37 GMT  
		Size: 72.5 MB (72486827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1aa146195f17f7836f924baf3fe687faaf77fec182664af96092dbf5980123`  
		Last Modified: Tue, 04 Aug 2026 05:03:35 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85ba3c0601bedb2c106fc32b12d53032b9af751c029fe5c09dda54d47bc51b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5152563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c6ab1deb9a2b149bd0c85097c6e492dc476bb43208943caa0d6fab640e9e671`

```dockerfile
```

-	Layers:
	-	`sha256:e7f35d8a3e6208ef54659667f487c5f45599b3a78b1a6172aea4ca8cc93d2bd0`  
		Last Modified: Tue, 04 Aug 2026 05:03:35 GMT  
		Size: 5.1 MB (5138094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78e086264f17e89ec1a6279b4062d9bdf6282f6028da8cd68630fa52e3107a1b`  
		Last Modified: Tue, 04 Aug 2026 05:03:34 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - linux; s390x

```console
$ docker pull clojure@sha256:5cf68fb6108bc7ab02874c381637ae3138358966ee16f94b1307b3e17bf1cee8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fecad364a3c56bdd52c2b583851d6ea5359e6b187f6923213dd81080a7a998b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:19 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:51:19 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:51:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:51:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824c87d906fc73b80310937982d370ad7d5af67a45d73feb5d7a209c632be5f9`  
		Last Modified: Tue, 04 Aug 2026 02:52:01 GMT  
		Size: 126.7 MB (126652394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a5ad10ca2c01a9273a7a015f2955e3e3016b4d03c83fc82ee498cebd9c85fa`  
		Last Modified: Tue, 04 Aug 2026 02:52:00 GMT  
		Size: 65.5 MB (65456046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c32a53faa6c4167316d22a8172eb3c4d5b1cec8d3d66be0967c4a46fd31944`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:71c67bcebe2603916fcec544f7f84bb93e510837b10c85f48178f225026e34cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:823795510815fd11ffbfb4468e19a27bc4b80ba29c2df9ad880c6577480f0db5`

```dockerfile
```

-	Layers:
	-	`sha256:efef67cca2131020327b2606caa816e54ae4771a26db9ffc8d79edb5f79ca17c`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 5.1 MB (5124876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3dab02f26480df4076b0d9af40972a6ea3689f9edc30d3b83ee65f35f46a99dc`  
		Last Modified: Tue, 04 Aug 2026 02:51:58 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json
