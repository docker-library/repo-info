## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:11a09757c84df3bd7325a71903f0b3c7a50dfdb12f8b22fc5088c67caa8d6438
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

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8a3a4901a5cbcb30e1778d306d9d114abc436f5354f1c7cf09f9ef023f5e85bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.7 MB (277713336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4df81c8ab5299ac6db2e0d94062c72bf93acb1281f162b50b8920e1e54b3a1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 19:12:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:47 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:47 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:13:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:13:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:13:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706f753341421fea60fc45e40735d59eeb651f9b847457f7001d14ad8f6978e3`  
		Last Modified: Fri, 21 Aug 2026 19:13:26 GMT  
		Size: 145.9 MB (145861378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc578333cd963f579c65cc6f1839558ea9f85d6938cf489cdb7b18dbe06b3204`  
		Last Modified: Fri, 21 Aug 2026 19:13:24 GMT  
		Size: 82.5 MB (82539000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7cb6138f8f660dd46ee9ad38200db1c2a69f22cd3ee118bfbe5fadb366595fd`  
		Last Modified: Fri, 21 Aug 2026 19:13:22 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cfb69bcacd026ee6bddaee53731347455dc773d4798726e6dce5acab19024671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a11ad313ac3cc5b344688d8c30c8be6e3dec3ee03249478410e684c9871d98f6`

```dockerfile
```

-	Layers:
	-	`sha256:10fe66786375590bd5161cd24991fcb04fd1d18458bfa342d21b7bffce26cf3e`  
		Last Modified: Fri, 21 Aug 2026 19:13:22 GMT  
		Size: 7.5 MB (7488407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57d8cb07dc5b9cc46cd41a10fda6ee84898e8b9c3c379c7216d5e37fd59c7348`  
		Last Modified: Fri, 21 Aug 2026 19:13:21 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:38bb0e69cd00a283f1db40004b9ae8cdaf758dc89638539a5c81ef987b07ab57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274631272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fa364c57d29cdb0d289448f047936162bb49438369dbaad86910ab9f5ee35b`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:31:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:31:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:31:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:31:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:31:36 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:31:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:31:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:31:53 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9c26825646881f3594f6c1afba960bafa6338d7a214a28b84db1567f59625b`  
		Last Modified: Tue, 25 Aug 2026 01:32:17 GMT  
		Size: 142.6 MB (142566596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec5f90933331ee7724a36afa7da4197347acc3c9b3b13d914542719c4805551`  
		Last Modified: Tue, 25 Aug 2026 01:32:16 GMT  
		Size: 82.4 MB (82359178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b545f415ed377b12cac2ce222676376fa3b604168e3d6754072fc8fa2ae65281`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ed2f48835511bc8440ece0a79329ff9c2c047e5368e7d92f51a168c84be21d3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7514853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a0b8efdd5f477d472ef40a89f75b71a2e022ad11d6bfb1edf4598efc4626a48`

```dockerfile
```

-	Layers:
	-	`sha256:b75744b5a8bba61c3024947939377ee7a8a08e624bfe38b93cf3ed332e38b21c`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 7.5 MB (7500396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cfd9ee76655b0dc391f85ab5e34390af9dd2cfd2635d44b4894dd12a791715f`  
		Last Modified: Tue, 25 Aug 2026 01:32:13 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:dcd1bed1874716f048a4c511f536f301bf329c9c3e2830c0335eb625119e2cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.2 MB (274174791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a3623dec1a7348a994767a4a95971861c5167e245b9028d7461573a12df6e5`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Fri, 21 Aug 2026 21:37:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 21:37:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 21:37:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 21:37:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 21:37:21 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 21:45:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 21:45:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 21:45:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:084b8690c19959508c59fd39f894e560873583a3645792800fb1e42ab4d47b40`  
		Last Modified: Fri, 21 Aug 2026 21:41:18 GMT  
		Size: 133.1 MB (133089927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f595a62c7300f77d4c7ee682e7aa417e2a21c53c04e044149dd26831c4ad06a7`  
		Last Modified: Fri, 21 Aug 2026 21:46:18 GMT  
		Size: 88.0 MB (87950613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df3133518f2bc53154b853a73955f5229d2820703d79ec4da0f31b11466376d`  
		Last Modified: Fri, 21 Aug 2026 21:46:15 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f3ab67409949e0eaa3ec31ccff148adacd6f0fb7979e8a18b157dac9d82cbbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7506600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787722aa636fa9741131a5509b984d6f93f8b1f784b061931622dadcdf5878e7`

```dockerfile
```

-	Layers:
	-	`sha256:e971e9715f5faa025e968000c3f4caf9fa0d35deb20163e75475085294a2a946`  
		Last Modified: Fri, 21 Aug 2026 21:46:16 GMT  
		Size: 7.5 MB (7492213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:581847e027d28a436756343cbbb7c4f27bece803a5e46890c66420b580ac2ec4`  
		Last Modified: Fri, 21 Aug 2026 21:46:15 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:f52c37fd51c0c5fc370059e2881ba611df92cf4e61a081b0cea1f512c3331b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259568595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9b83369d83620dac0f04a8f96eb092881e1f7fa0206a831ca31750620846df`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 02:05:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 02:05:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 02:05:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 02:05:08 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 02:05:08 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 02:05:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 02:05:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 02:05:25 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:4415ebc808ead343ed2ff09e9ddd7fb38001c3cd021262fe1ae58bf5fa958333`  
		Last Modified: Mon, 24 Aug 2026 23:20:18 GMT  
		Size: 49.4 MB (49406697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b23cfd74f28384047644a3d11a0e5145617e86e8a0fbcaed4df0fae84b08133c`  
		Last Modified: Tue, 25 Aug 2026 02:05:55 GMT  
		Size: 126.6 MB (126641459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2fa6865edacd4d4c7047de809fdf32ecbe0db1a270ac5c95ececac3ed68d9f`  
		Last Modified: Tue, 25 Aug 2026 02:05:54 GMT  
		Size: 83.5 MB (83519796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e60efa36f83aa31a2e633ed18635c1ac422f4698c171b5d87cf3ba6f5c771e`  
		Last Modified: Tue, 25 Aug 2026 02:05:52 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a85c33ca2c72d84c4579fd6e99e4b4e0e38a875e001b3bccdf296b40fecd53e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dbda80c1d99ece0b7eeb9632e28ca26492cc8b24a06b5cb23729ba78dd528f5`

```dockerfile
```

-	Layers:
	-	`sha256:db5ab9f7ec946c36db5440aaa1ab225c9af4b77df9e284ae2dd5f0dc6cf2931f`  
		Last Modified: Tue, 25 Aug 2026 02:05:52 GMT  
		Size: 7.5 MB (7489311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ea3fd066ceed82e503add8908f52c9fefe0e34175ce264a374fe35c2e389142`  
		Last Modified: Tue, 25 Aug 2026 02:05:52 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json
