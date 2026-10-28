## `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:b66b3be5fedee3886569781e5baf41cd79ee815c769809ad6fd1f8307a4b8544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:c9cb64c80286749ca8e5572293ec9101babf3728350be1191c15625efb4207bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221086249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f36a96547d77c023354103ad2584dde0dad65b3403e30449f10f5e1f227b2c98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:15:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:15:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:15:20 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:15:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:15:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:15:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:15:37 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:15:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed294ecca4798ff8766cb9c2dbcc8a31a8adabadb301d712e736cd7253e6e98a`  
		Last Modified: Wed, 28 Oct 2026 02:16:00 GMT  
		Size: 94.6 MB (94563579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff5794ddc52f766bbd14be631d46b3db8bdcc0c12c20833d0a5168a82557810d`  
		Last Modified: Wed, 28 Oct 2026 02:15:59 GMT  
		Size: 78.0 MB (77997075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc66420b1ecaaf2f2a620b3744bc5ea0f383448bfe5ec28dfffe02c67f732e0`  
		Last Modified: Wed, 28 Oct 2026 02:15:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3341158244db2f47da3df6bb457ec01c23d94c27c3bb0151bf6dd76a6b32c5d`  
		Last Modified: Wed, 28 Oct 2026 02:15:56 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:fc4a111ff77f678ca01738d3abbd2a1bcd36fd6bed2374e3a2ce5e11ab75a903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7360755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d4882d1ce4e63ac8466dcba7158f575c9ba068dff742ed4e0a66923fa414b18`

```dockerfile
```

-	Layers:
	-	`sha256:dd922065001c625267d2e4a261ee77ebc5155036a5ee0a1e52921e02d569a1a4`  
		Last Modified: Wed, 28 Oct 2026 02:15:57 GMT  
		Size: 7.3 MB (7344146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40c7d36685fc0a8416caf568f3f207dc806f2dc7f7e6dcf4077939c74149159e`  
		Last Modified: Wed, 28 Oct 2026 02:15:56 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e28309277d397dbdcbf622f98aca04ff70077a3378150a07e729a6260a1d754a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.9 MB (219941916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2152353ca8744f4a1f685cacfee90b20a564219d2195ff5b10948d4ebec309ba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:22:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:22:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:22:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:22:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:22:46 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:00 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:00 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8945490c2a45c958fd0fb2417add8a0edd3eaa578bb72a0f713aa86e3a0a576b`  
		Last Modified: Wed, 28 Oct 2026 02:23:22 GMT  
		Size: 93.5 MB (93543622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:921b1d3686bfe43fe13d9a7b194827c79faf14c6a0cbaef7ef9ba1213d819067`  
		Last Modified: Wed, 28 Oct 2026 02:23:21 GMT  
		Size: 78.0 MB (77992081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5966121c9f635617fa28a9b26e506e0503609aa308fc8e2813d5054f0b75d643`  
		Last Modified: Wed, 28 Oct 2026 02:23:18 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8669fa6e7da36a4f454a002143af08c0594e95abded4d119e29985423b7d0819`  
		Last Modified: Wed, 28 Oct 2026 02:23:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:18142f12708703b245520df93a0f4593707fa39dbdc8db72e703fbe1260dc933
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7366681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9972426886cf0d3679dccd8d39b0900f21636225e259872c2602736440c1781`

```dockerfile
```

-	Layers:
	-	`sha256:275edf5e2743b6f949bf0457ea193bfea071448e286b5f94c32599ceded885e9`  
		Last Modified: Wed, 28 Oct 2026 02:23:19 GMT  
		Size: 7.3 MB (7349930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6aa6e0b035226879d09d2ca9e9acffdb21ed690a824f4b0064900f1f2da5847`  
		Last Modified: Wed, 28 Oct 2026 02:23:18 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:7e5c6df2576147250b02f04a942bf1eebcef5ab542cc5434e69cd1d7091203f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.6 MB (229553732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a55c883075a0f885f4079dd59ef67ebd4521be9bbb1e8c48172e67e456926f60`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:01:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:01:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:01:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:01:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:01:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:11:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:11:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:11:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:11:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:11:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cf4557b0dd8e520302a63b87bfc1c5ff2dd29442ad047383a634b6ae3b42e3`  
		Last Modified: Wed, 21 Oct 2026 11:05:54 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3fe2dc501400f8449c763b517cf6d4cc8f73293c20d8d542e3313f7bd48343`  
		Last Modified: Wed, 21 Oct 2026 11:12:34 GMT  
		Size: 83.8 MB (83837089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77e042b6c4d2248036953c6d0bb343b6035c5904b21a67f7d246399abb552ce`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76767285fdb457bfe97e0ca19555d2a400c7c161b9ee610492264b655f8b7e63`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7aab25f57e62cdc79be1353e15c96a7a30babb00e90a96785b81c9e5cc5cead3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7350753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a0c35ff9707ab71bf5d059566b38785e548d5defbdf8804bcdfdc6d733442f`

```dockerfile
```

-	Layers:
	-	`sha256:554e4fdd92dea50044d03293d25e117a5fc9a681a3b594899462554b0ee71f17`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 7.3 MB (7334084 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:695bd07c93f4dc58716814d61de8a3b72358f8e29fdcd87e961b7c4576830ad7`  
		Last Modified: Wed, 21 Oct 2026 11:12:32 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
