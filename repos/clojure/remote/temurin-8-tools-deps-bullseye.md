## `clojure:temurin-8-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:d5d498480e4c38a66746cd5672afd1b62840735f06f2ccccf30b8e230d826412
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:0b5a048f95e7cc1659e72f29594f2d5d78b9451d91d61bb6c3c429f8d90ef682
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.5 MB (175494403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169fd5a8847aa4d005a109d518c1e08dfcf1b7de16a97ee2cda1c1ca309d1e50`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:46:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:33 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:47 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3c78335097c27e25d84730336b97f2a7c3f540ca34a0389fa8b0c24eb0be77`  
		Last Modified: Tue, 04 Aug 2026 02:47:06 GMT  
		Size: 55.2 MB (55198676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43550293d18cfc6d67eadd2a3fc4df76b13bd8a5d961f64765cf5735a89b397d`  
		Last Modified: Tue, 04 Aug 2026 02:47:06 GMT  
		Size: 66.5 MB (66518505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5d88c8642755421a3e14e35081534412c8b94498f62c717fb3b4cd0e2fd23f`  
		Last Modified: Tue, 04 Aug 2026 02:47:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:92875c58911b28f3a33cdab165da168ec22607b8d633b726e2a03aef5100bba1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7540156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8641e0301270fca450bf514e719619bf815076218c9759e72b0ab678e9af8370`

```dockerfile
```

-	Layers:
	-	`sha256:3416c0d9b6e60ab219aff1cb75890273f555410fd273f4951e44ec36126fa017`  
		Last Modified: Tue, 04 Aug 2026 02:47:04 GMT  
		Size: 7.5 MB (7525809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:221f23dd00638e8c3aeb8e5f8c4467e9a2b5700ed06fd945e202df292c81fcbe`  
		Last Modified: Tue, 04 Aug 2026 02:47:03 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cea56b8952f90fa0e9a91aa0c19f87235a64ee02d7bac11c3da3d4ca415dd211
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.2 MB (173219994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5748da2e8af4440ea76b7c414a13335f14e2e3f0a27dbb541a079fef9a2e1874`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:46:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:46:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:46:45 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:46:45 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:46:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:46:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:46:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07e4847b8be86b7084a837928708ea4d4c7de98b9c7322a7eb752f28c3362b2`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b616a6786b572d499a69d5d06cfc0891c0658f074ef3ba306e3585780ee1eb0`  
		Last Modified: Tue, 04 Aug 2026 02:47:17 GMT  
		Size: 66.7 MB (66685526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18369edf4b72aa004462181bc80219383f6cdf26baaf349835f22e3c92b4f7d4`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:0352c9167f8b92a1f957e2bdcd96bae1ac6b13d5c3d613bfc9e7e45def1bcf15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7546074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0a03746ef8b257b046ea2784a647a38dfd6167079b25eae1c8f4d1e8790fc2`

```dockerfile
```

-	Layers:
	-	`sha256:71e1831613ce7ff8d179a99620c3b5bf146ccb185d0b022a7a6eaf6c2388658d`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 7.5 MB (7531608 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4399a7c6077815b48c4c25d4998f5e0a865e2018459f3530d51b64746cfdc26e`  
		Last Modified: Tue, 04 Aug 2026 02:47:15 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json
