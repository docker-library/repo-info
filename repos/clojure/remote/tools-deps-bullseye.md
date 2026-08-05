## `clojure:tools-deps-bullseye`

```console
$ docker pull clojure@sha256:666fa1ab7c99f78928ed9e5cc14b25728f3af7bcd02aa7fc5dc8122e0b6f9b26
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:b9fe810ba415e8363a42aaf2f7d61cc6340af5dd41109decb993e6ca4e06fbb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212871022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a786811db5eb484242d553f786a73066305e08ec42af03175b84f4b6100b0fba`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:24:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:24:33 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:24:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:24:33 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:24:33 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:24:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:24:46 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:24:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78cd6838da55b2c6239f7068a24715eea38362345ef02a396d65b6401685922e`  
		Last Modified: Wed, 05 Aug 2026 01:25:09 GMT  
		Size: 92.6 MB (92574564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9f071ce937525970be5dd29c092ec515db48b6cd339abc50a871dc39d34405`  
		Last Modified: Wed, 05 Aug 2026 01:25:09 GMT  
		Size: 66.5 MB (66518401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8497079c6381d920d6cd3799898c0907ebc57d227ff53a0138aaedb78240e10`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5984c31c708d967ae69f41ec62b716ff7e4fc413805394e9bc804ba9224e6d`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:2f6c66b8484862777f15ca88240bf13a62d1830d59576b5f5897c4097e9fbfbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7390119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ef2677f8deda66e5ced4268cfa944212c4ba9367364ef85e46fce1bcdd1d3e`

```dockerfile
```

-	Layers:
	-	`sha256:15e9e5bdb07be0d2694c838cf2e94815f757eece3ac7bb735ac9aca8ac3e04ce`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 7.4 MB (7373519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c923910a10e7d71b3f4b8ebdb1c0bdfd99db98c68832ace613a94494e22de374`  
		Last Modified: Wed, 05 Aug 2026 01:25:06 GMT  
		Size: 16.6 KB (16600 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:313deeceee1f8f8caf17606e3d2be3ab4a44475f135056f5ed80df50bafdbdfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210489218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea82e472c9f9d904850a73799679745902d0bdaa607f8500b57e82732a9abfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Wed, 05 Aug 2026 01:30:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:30:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:30:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:30:36 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 05 Aug 2026 01:30:36 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:30:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 05 Aug 2026 01:30:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 05 Aug 2026 01:30:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:30:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:30:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09c6acc53146cf97d4097c25f112f2384099367fed353daed4ef3d32b2a7169`  
		Last Modified: Wed, 05 Aug 2026 01:31:11 GMT  
		Size: 91.5 MB (91542235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2a81b367b2c228c07f0e9898c1de399889deb58e6ac0e79c64e5991cf0e2239`  
		Last Modified: Wed, 05 Aug 2026 01:31:11 GMT  
		Size: 66.7 MB (66685046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1657ba646633f56f1ac6218d4698e4ea0000813ba1397b2b35a2289800a3ca9`  
		Last Modified: Wed, 05 Aug 2026 01:31:08 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7446a0e7b838aac4049e3d9d7401267480ae0cdb792d075f1774617221cd4154`  
		Last Modified: Wed, 05 Aug 2026 01:31:08 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:42de951a2d78dd8649f2d8926b8872a699b7bfd24d667687788c35a2985d1a17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d10a14cfee3ee8a3b8c8b04aa7290b1898cc368388eef7b4e08e397ae6a67fcd`

```dockerfile
```

-	Layers:
	-	`sha256:b7dad0c3d04d44a8c0524a4161245c8604b91e7303d94ae845cb94069d7cf467`  
		Last Modified: Wed, 05 Aug 2026 01:31:08 GMT  
		Size: 7.4 MB (7378639 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:727ae2a2681f3de1e23ad5820bef5b02d591aaf1701f60d8248c83612f461933`  
		Last Modified: Wed, 05 Aug 2026 01:31:08 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
