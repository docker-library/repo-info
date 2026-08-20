## `clojure:temurin-8-tools-deps-1.12.5.1664-trixie`

```console
$ docker pull clojure@sha256:b32333f64f3953fc9d28a22890a968c6cde74ed13bbf0193f0fbb5d08d3a8787
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:0c06a611dcf3f3ed5769e54bd6b174edc816724afdb369f03ac7acb2729bf733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187050762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3454175e5f0def9f91b88f6bc79f6e0df6b2c39505857b78914b02bc2d2ad9`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:40:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:56 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:41:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:41:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:41:11 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1da3cb2f93f2ca3c5bdaf4c024a7f1ebd717938d20c858e4be4b9aa81fc8608c`  
		Last Modified: Tue, 04 Aug 2026 23:52:29 GMT  
		Size: 49.3 MB (49312314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611d7dbbefdf3c85d5a461f0c40b24b87ee9da027956cd13b7eac422e2a415a2`  
		Last Modified: Tue, 18 Aug 2026 20:41:30 GMT  
		Size: 55.2 MB (55198715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e181bdbde7cdca4f5a21f15508e581696cbf16fe40effa9e91f6e6ad688df4`  
		Last Modified: Tue, 18 Aug 2026 20:41:31 GMT  
		Size: 82.5 MB (82539089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a438a4ea23cb2fb6b9b7cb806688ed3f2f3801f362d5382269e700edb917003`  
		Last Modified: Tue, 18 Aug 2026 20:41:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fdc4c7184487705eba9083f2fae1ace0548397a31233d0d56b72aafadd41767a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7603577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53146cd00554041a01251f9b0f81855f824b487ed4286c9299f772dd97c958f3`

```dockerfile
```

-	Layers:
	-	`sha256:9ebcf95f884ee9135a3fbcab0949a89cc1ac34814194c5bde388da956cade83c`  
		Last Modified: Tue, 18 Aug 2026 20:41:28 GMT  
		Size: 7.6 MB (7589253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f71466dca48f4adf542f6c4db9d02cc3c79ef3ff97f090d81d33da8c2570d490`  
		Last Modified: Tue, 18 Aug 2026 20:41:27 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bcf3e7bab40f6842931713568623a070fbc9f5965e70cff21fa73a17727ee3c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186306500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46bde6bd0888500aa9fdd7f26649640a36c36f34cc500377ac3c54db3ca0b93`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Tue, 18 Aug 2026 20:40:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:40:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:40:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:40:56 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:40:56 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:41:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:41:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:41:14 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:018e5aeb5455352b2e96f5c9cb604b5767162ec71fcd22ca9d02b088cdeaf49d`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 49.7 MB (49673846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae6d1da9cb29cbcf9ea6b9284ce6f68a4cd71fbbc6a9102bdefdb768a517956`  
		Last Modified: Tue, 18 Aug 2026 20:41:31 GMT  
		Size: 54.3 MB (54272935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de5e4ab0314d8366e71f1a42737add5032382bbe44de0edfbce73ebea1e3758`  
		Last Modified: Tue, 18 Aug 2026 20:41:35 GMT  
		Size: 82.4 MB (82359076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:718a8b25ccd4a17a1a261498f329a388a748e89beaebf8c9aae3e5f367ef97f6`  
		Last Modified: Tue, 18 Aug 2026 20:41:32 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f1d23b3ebf9d28c5b47cb60c69c4102e36be237b61fbe8b2ed1599ec385d21c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7610787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca69adc40f6c89faa3d429ffb567d2821890a8c1db4829befd8b2faa06a6aeb`

```dockerfile
```

-	Layers:
	-	`sha256:f2466a49f69d74ce3e030456a3b3af33cb22614dcddf13343092dc3c41918359`  
		Last Modified: Tue, 18 Aug 2026 20:41:32 GMT  
		Size: 7.6 MB (7596346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5af25e32d61f7b82cedc845792c7383d7feebd182af177124475c6c18b36b079`  
		Last Modified: Tue, 18 Aug 2026 20:41:32 GMT  
		Size: 14.4 KB (14441 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:10af3928496a02e52e7ab5b3fe9c55db179ff3dc4f7c58b95cdd67f54cd66baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.8 MB (193753983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b7ba6a28b4136b0c4cae612a06258cfb141102bb752ac118d40e95735b53db`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1785715200'
# Thu, 20 Aug 2026 00:50:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 20 Aug 2026 00:50:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 20 Aug 2026 00:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 00:50:51 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Thu, 20 Aug 2026 00:50:51 GMT
WORKDIR /tmp
# Thu, 20 Aug 2026 00:51:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 20 Aug 2026 00:51:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 20 Aug 2026 00:51:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b38465547e0d6eb6fc8951a86a8affc8d174d00b5c853df5d8c408aa9b46aad9`  
		Last Modified: Tue, 04 Aug 2026 23:53:11 GMT  
		Size: 53.1 MB (53133605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f29d76e00840a9666ea9153a85885909b8c336dd8c1935f760839aa963d29b10`  
		Last Modified: Thu, 20 Aug 2026 00:52:15 GMT  
		Size: 52.7 MB (52669122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c38ed231265953771ab0ca4362ac236eb98836cd2c5ee20e2d8a3bb9f1578e8`  
		Last Modified: Thu, 20 Aug 2026 00:52:15 GMT  
		Size: 88.0 MB (87950610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53838f0036284296897bb6d8620974b3c557402a2d47f488cf7daff3c33a90e`  
		Last Modified: Thu, 20 Aug 2026 00:52:12 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1664-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:dca9cb8c988fe0c31391970306972c85aa93a037c7182ff8c4437cff00606ac0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7608641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38b8dd4a0d1a269867a012ef660da3e3044c0d72e8998d3709aa36eebd890527`

```dockerfile
```

-	Layers:
	-	`sha256:b96bad587305397fdefd8a3a68ef139b109c7dc06a533f0a8940f51b136aac02`  
		Last Modified: Thu, 20 Aug 2026 00:52:13 GMT  
		Size: 7.6 MB (7594269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d4ed6628470c73b7e2a7c096b50d3b28ecb23043bccc2215c7a5d360a80fef`  
		Last Modified: Thu, 20 Aug 2026 00:52:12 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
