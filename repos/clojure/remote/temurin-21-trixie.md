## `clojure:temurin-21-trixie`

```console
$ docker pull clojure@sha256:720b4cb2658b136c86783bca35f8a694fc7953f6036226bc8048e339a07673c9
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

### `clojure:temurin-21-trixie` - linux; amd64

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

### `clojure:temurin-21-trixie` - unknown; unknown

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

### `clojure:temurin-21-trixie` - linux; arm64 variant v8

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

### `clojure:temurin-21-trixie` - unknown; unknown

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

### `clojure:temurin-21-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:4b39756eeee7172435c00aed20c43ffccb3a9fa0163a67b5a53bf36d39e7ba12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.4 MB (299427364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b07fd9ff6fa58bb699678f24c6b229d8b0175d1e4c067b9ee134d12f841e6ee6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 07:47:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 07:47:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 07:47:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 07:47:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 07:47:43 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 07:52:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 07:52:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 07:52:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 07:52:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 07:52:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c626bff995483821a9feddd77f9c5d47b8f37cd0e214f188c0e30a5d97e555`  
		Last Modified: Wed, 05 Aug 2026 07:51:10 GMT  
		Size: 158.3 MB (158343253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a028ce7dcadae1b6ddea5b86447bcbf325e66f525201eadb3dfa57fb05364b9c`  
		Last Modified: Wed, 05 Aug 2026 07:52:40 GMT  
		Size: 87.9 MB (87949465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6d191ebcf31469d72f8d3d5dc72722c1f505ad700ca102da2ef27fe6c8ac4ea`  
		Last Modified: Wed, 05 Aug 2026 07:52:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5db378ea6350a7bb4119eac03675a2245acc0fc4c1f544ca4b5d1b447509c05`  
		Last Modified: Wed, 05 Aug 2026 07:52:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:42ccef8dfa657deeff0e2f2f85f6884e8fe252707d5c18ba72dd32653f9d9217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11731b7a88ac084a2ba05fee7725cdc904998032e8ac124cf9f0c9e98c525cdb`

```dockerfile
```

-	Layers:
	-	`sha256:67762abf5cfc879312ae468e0a52bd2e6d32dfa00750416058e60de33fa116d3`  
		Last Modified: Wed, 05 Aug 2026 07:52:38 GMT  
		Size: 7.5 MB (7475166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:711ce519dfaf65862c3114c72d6bacc3e4426452b36cfd469b921453257bffd3`  
		Last Modified: Wed, 05 Aug 2026 07:52:37 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-trixie` - linux; s390x

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

### `clojure:temurin-21-trixie` - unknown; unknown

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
