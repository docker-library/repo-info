## `clojure:temurin-21-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:cad1dff9712fd2806e49275d3fec422de24a5d01a3a6ff93f30b6c4a6a06d4f6
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

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:a9e4da889028f2a1f4c86eb2e9f294613bf2f7028ccb7514a996974c37a438c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290019386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60e6a4107ec9b7a9c3f38d6c0962668087436204d2e0a7921faf395fcd488610`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:47:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:20 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:20 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:47:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:47:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:47:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b8d20babcc691bc9385dd6b53785f24a044b02c0b7d46c655e1e4e79078ba7`  
		Last Modified: Tue, 18 Aug 2026 20:47:59 GMT  
		Size: 158.2 MB (158166948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ada49ed3b506ea8f56fe1be8af0c51307c31ac3a8f193ce2e2ff61ae530455d`  
		Last Modified: Tue, 18 Aug 2026 20:48:00 GMT  
		Size: 82.5 MB (82539084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc10ac2427b83345c0cdd46dd3c3d9e420c807eac4dc07a9b0d57f0d342c3599`  
		Last Modified: Tue, 18 Aug 2026 20:47:57 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495b87e324256b9f735eb2e895ae17a500b72c084c5096e61eb942adb9543622`  
		Last Modified: Tue, 18 Aug 2026 20:47:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:7c4fca8b7e583e3835b37738f79172c9e2f6b07df4c9f632e0c54d99e01d0d93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7486653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38929226841c36b2f1079d26e2a9f30c22d96b7bf8b5af0f2f4b052244875241`

```dockerfile
```

-	Layers:
	-	`sha256:d33d0ade7166dc83be736c0d5034057ac2ca73e526242fdca841a24658115d50`  
		Last Modified: Tue, 18 Aug 2026 20:47:57 GMT  
		Size: 7.5 MB (7470745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee0fb851007f725dbf4de5a3875a459081fb01c88cc0ced725906c7904f87823`  
		Last Modified: Tue, 18 Aug 2026 20:47:57 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e1f2ba42e4314a65139112eec73af469033a05871645ebb5cac61f397852ee67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.5 MB (288495220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d4dfdaaa11fa635c4a0803be342dda04b3c43636a4db3ac80724fc2ab2578e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:47:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:47:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:47:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:47:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:47:51 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:48:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:48:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:48:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:48:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:48:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd4108797f209d123a9846fe852ba0d72fbb20c4af54a2eb9e7c29063fb0d89`  
		Last Modified: Tue, 18 Aug 2026 20:48:36 GMT  
		Size: 156.5 MB (156461266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3c957070ea76fdb4fb3536af8a19f80420c2bc409c643d0effc9f545309b40`  
		Last Modified: Tue, 18 Aug 2026 20:48:34 GMT  
		Size: 82.4 MB (82359069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bffa7b7fe7bb33392591df3fe4e68dc1e0727e2ae4ade31d2d2c9cd21c3125e9`  
		Last Modified: Tue, 18 Aug 2026 20:48:29 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e51bb3da288447f4e48cbff453c823c3af811b2c90a0d0b6075dd5fff89e37`  
		Last Modified: Tue, 18 Aug 2026 20:48:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d1e4189c4f97bf9f77a795e477ab055cc24f31e6b854e1f61c6e4a68bb715c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7493164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fe73cf990988074c4a543d5e49631aac366decd127f6713bea689cb80b4205`

```dockerfile
```

-	Layers:
	-	`sha256:26be67c5c0b6f6558b8676f8759d2b4e221e4c83ad751ca4a5c2b85f3400bfdc`  
		Last Modified: Tue, 18 Aug 2026 20:48:30 GMT  
		Size: 7.5 MB (7477138 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a07fce3273e25024733d5462d113b2509701e23f69a5b1d05bb095a163ef1018`  
		Last Modified: Tue, 18 Aug 2026 20:48:29 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4786d9da48ce102ab6e258fb4913758409cb379a5c476c75c5c09296b8f76e02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299428561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4d4f8c5820107fe7a1e9e5a2d39a9ec9f6a1c5dd704cf15de670e089f40e5f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 01:21:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 01:21:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 01:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 01:21:15 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 01:21:15 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 01:28:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 01:28:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 01:28:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 20 Aug 2026 01:28:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 20 Aug 2026 01:28:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bdd65664cd71d6af78f3ae6966803e327609aa504e54f5e11b02407b367944`  
		Last Modified: Thu, 20 Aug 2026 01:25:01 GMT  
		Size: 158.3 MB (158343275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adfb4297cd1486ba6ab8eff0c8e297aa811c539e14e2454c9c955302bfc0939`  
		Last Modified: Thu, 20 Aug 2026 01:29:22 GMT  
		Size: 88.0 MB (87950641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fda045336a754c5a2c4984a62a2c4485439ab021b9f884fc7a766030699f17`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9e200562ceb802d66dd5ee1d6f173179ddd9e29e696db02d44c066d3b4af576`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d2baab7e0659a63902d3d298784c365e8dcd815aa62a94cfd733c9a910b749db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4da437d4a092d545d5b6ec952876282506816c7be3d4965102c8b65b411cf20`

```dockerfile
```

-	Layers:
	-	`sha256:6fac2234547295be17e3a0d257a67d18a414930f3e3b1536dccce0f21fa583d2`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 7.5 MB (7475166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de9762640921ba5b2f7209335906e64d40d487c166d768d98df81b1081fe5224`  
		Last Modified: Thu, 20 Aug 2026 01:29:20 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:c2930e56dcebbbcbf7504447524a6dc1433ea224a66c267b65c365478d61a773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.3 MB (280290576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7766b4de2c6586ca4c6e01bb4dd93fc790ea077d9b9e164dfb247d3bb486f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:36:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:36:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:36:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:36:38 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:36:38 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:36:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:36:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:36:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:36:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:36:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c6f9cbf321f2036050c3f44b5085f31b859670b833178a1da979db10f9ba6b15`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 49.4 MB (49381426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7daed3493487ee4270df80fb555f86cda513973e210765550a608f3db93f5608`  
		Last Modified: Tue, 18 Aug 2026 20:37:26 GMT  
		Size: 147.4 MB (147388358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74f59350072fbf2b84ab252edae87e489b8a45c5cb65d5c8ccd0da5b4d5a660`  
		Last Modified: Tue, 18 Aug 2026 20:37:25 GMT  
		Size: 83.5 MB (83519754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494b863be37b40b9025f95ccd0e4db8abab84aefd6ac96f354fdf0b8a5266ae5`  
		Last Modified: Tue, 18 Aug 2026 20:37:23 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcd506b91bbe148eb9a2b441d9cb38f7afc2dadfe804a94ce89ed97a32f0c0a`  
		Last Modified: Tue, 18 Aug 2026 20:37:23 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:04ee90249bd23e68e5466766f7c0aa3798076069e8bee587d56aa0b5954bf16e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7482574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4dc736816ef994fb35b4cd033851ec9cbb643e57a3652998f949f4f7f7c1b138`

```dockerfile
```

-	Layers:
	-	`sha256:d7f328afb0ec0d5a21f549e30a1b365bc42ba3b488b5011201175b3f3847dce8`  
		Last Modified: Tue, 18 Aug 2026 20:37:23 GMT  
		Size: 7.5 MB (7466667 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3e2ed4f837f3c6dee027834bd9ba4bca0d1d7cef706a2c8ed42fc7d872928fc`  
		Last Modified: Tue, 18 Aug 2026 20:37:23 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json
